-- up
CREATE TABLE `course` (
    `course_id` VARCHAR(50) PRIMARY KEY, -- Primary key declaration should be here
    `title` VARCHAR(255) NOT NULL, -- Adding title
    `description` TEXT DEFAULT NULL,
    `image_preview` VARCHAR(255) NOT NULL, -- Adding image_preview
    `category_id` VARCHAR(50) NOT NULL -- Adding category_id
);

INSERT INTO `course` (`course_id`, `title`, `description`, `image_preview`, `category_id`)
VALUES
('L373349028', 
 'Diversity and Inclusion for a Better Business', 
 'Diversity can seem like a difficult concept to incorporate into the culture of a business. Leaders often view diversity initiatives as important but see them as secondary to the day-to-day operations of a successful business. You may ask yourself, where and how do I start? In this course, we’ll look at many strategies that can help jumpstart diversity and inclusion initiatives. Through these initiatives, we can build stronger relationships that improve the overall business environment and how it functions. These relationships can drive stability, sustainability, and profitability for years to come.', 
 'https://cdn0.knowledgecity.com/opencontent/courses/previews/L373349028/800--v112240.jpg', 
 '3d4e5f6a-7b8c-9d0e-1f2a-3b4c5d6e7f8a'),

('L373371072', 
 'Leadership for Identity Diversity', 
 'As a leader, people of many different backgrounds will look to you for guidance and security in the workplace. The individual identities within a workplace can include individuals from different racial and ethnic backgrounds, individuals with different gender and sexual identities, and individuals with different disabilities. One of the goals of a leader is to create a safe and inclusive environment for all employees. When creating an inclusive environment, it’s important to be aware of who you\'re creating it for and what their individual needs are. Recognizing individuality and implementing inclusion practices benefit everyone and improve your business’s culture.', 
 'https://cdn0.knowledgecity.com/opencontent/courses/previews/L373371072/800--v112239.jpg', 
 '3d4e5f6a-7b8c-9d0e-1f2a-3b4c5d6e7f8a'),

('L373324687', 
 'Applying Yourself to Diverse and Inclusive Leadership', 
 'Improving diversity in the workplace requires strategic planning and mindful consideration from everyone involved because inclusion in the workplace is a team effort. When a leader is a participant in change rather than a director, the culture is able to transform with them. Strategies such as improved communication, modeling positivity and adaptability, and building relationships can help make the transition smoother. Effectively changing the culture of a business requires commitment and determination, which is why it’s important to know of leadership strategies that you can use to help you build and maintain a sustainable culture of diversity and equity.', 
 'https://cdn0.knowledgecity.com/opencontent/courses/previews/L373324687/800--v112241.jpg', 
 '3d4e5f6a-7b8c-9d0e-1f2a-3b4c5d6e7f82'),

('L373312762', 
 'Finance and Accounting Basics for Nonfinancial Executives', 
 'Financial knowledge is vital to an executive’s role in a business, but the systems within a business can be extremely complex. Without a strong foundation of financial analytics, it can be difficult to interpret, report, or even understand a business’s financial standing. A lack of understanding can impede your ability to make educated decisions. By understanding where the data comes from and how accounting operates, you can manage your business with greater efficiency and interpret business systems more accurately.', 
 'https://cdn0.knowledgecity.com/opencontent/courses/previews/L373312762/800--v112243.jpg', 
 '4e5f6a7b-8c9d-0e1f-2a3b-4c5d6e7f8a9b'),

('L373319845', 
 'Financial Statements and Reporting for Nonfinancial Executives', 
 'Financial statements are a critical part of attracting investors. Financial reports like income statements are the hard proof of how your business is doing. Properly interpreting these statements can provide a stronger understanding of your business’s performance. This can also assist your company when acquiring new investments and making strategic business decisions. Your reliable and precise numbers may encourage shareholders and investors to feel more confident when working with you.', 
 'https://cdn0.knowledgecity.com/opencontent/courses/previews/L373319845/800--v112244.jpg', 
 '5f6a7b8c-9d0e-1f2a-3b4c-5d6e7f8a9b0c'),

('L373327593', 
 'Financial Planning and Analysis for Nonfinancial Executives', 
 'With constant market fluctuation and an unpredictable supply chain, sometimes it can be difficult to project where your business will be tomorrow. That’s where financial forecasting comes in. The data you have today can be used in various ratios and equations to create helpful financial estimates for your business.', 
 'https://cdn0.knowledgecity.com/opencontent/courses/previews/L373327593/800--v112245.jpg', 
 '5f6a7b8c-9d0e-1f2a-3b4c-5d6e7f8a9b0c');