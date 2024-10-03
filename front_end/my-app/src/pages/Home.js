
import ParagraphLimit from '../components/ParagraphLimit';
import React, { useEffect, useState } from "react";
import { Link } from 'react-router-dom';

const Home = () => {

  const Base_Url = "http://localhost/SPA/api/v1"; // Current Base
  const URL1 = `${Base_Url}/categories.php`; // // Side Links Category Tree & Content Counts
  const URL2 = `${Base_Url}//courses.php`; // Displays All Courses

  const [cats, setCats] = useState([]);
  const [courses, setCourses] = useState([]);

  useEffect(()=> 
  {
      const categories_Data = async () => 
      {
        const result = await fetch(URL1);
        result.json().then( json => {
          setCats(json);
        })
      }

      const courses_Data = async () => 
      {
        const result = await fetch(URL2);
        result.json().then( json => {
          setCourses(json);
        })
      }

      categories_Data();
      courses_Data();
  }, []);

  const renderChildCategories = (parentId) => 
  {
    const children = cats.filter(cat => cat.parent === parentId);
    
    if (children.length === 0) 
    {
      // No children, return nothing
      return null; 
    }
  
    {/* Recursively render any sub-children */}
    return (
      <ul>
        {children.map(child => (
          <li key={child.id}>
            <Link to={`/category/${child.id}`}>{child.name}</Link>
            <span class="count-content" > 
              {child.courses_count > 0 ? ` (${child.courses_count})` : null}
            </span> 
            {renderChildCategories(child.id)}
          </li>
        ))}
      </ul>
    );
  };

  return (
    <div className="App">
    <header className="App-header">
      <h1 class='headline text-center'>
        Course catalog
      </h1>
    </header>

    <div class="container text-center">

          <div class="row">
              <div className="col-md-3 text-left categories">
                <ul>

                  {cats.length > 0 && (
                    <li>
                     <span class="badge bg-warning home-marker"> | </span>
                      <Link to={`/`}>
                        <span id="home-category">Home</span>
                      </Link>
                    </li>
                  )}
                  
                  {cats.filter(cat => cat.parent === null).map(cat => (
                    <li key={cat.id} class="btn-primary position-relative">
                     <Link to={`/category/${cat.id}`}>{cat.name}</Link> 
                     <span class="count-content" > 
                        {cat.courses_count > 0 ? ` (${cat.courses_count})` : null}
                     </span> 
                     {renderChildCategories(cat.id)}
                    </li>
                  ))}
                    

                </ul>
              </div>
                
              <div class="col-md-9">
                <div id="coursesPanel" class="row">
                    {courses.map(
                      course => {
                        return (
                          <div class='col course' key={course.course_id}>
                              <div class="card">
                              <span class="badge bg-secondary corner"> {course.category_name} </span>
                                <div class="card-body">
                                  <img class="card-img-top thumbnail" src={course.image_preview} />
                                  <b> {course.title} </b>
                                  <ParagraphLimit text={course.description} limit={100} />
                                </div>
                              </div>
                          </div>
                        )
                      }
                    )}

                </div>
              </div>
          </div>

      </div>
  </div>
  );
};

export default Home;