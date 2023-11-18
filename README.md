<div align="center">
  
#  Inception 🐋
</div>

<div>
  This 42 school project is intended to expand your expertise in system administration through the application of Docker. In this tutorial, you will be tasked with virtualizing multiple Docker images, generating them within your recently established personal virtual machine. The accompanying readme includes an introductory tutorial to provide insights into the project's functionality.
</div><br>
<strong> We need to build the following architecture with a certain set of constraints : </strong>

<img src="https://user-images.githubusercontent.com/54292953/147146268-a616f39a-3f16-41f8-80c9-db5494c3dfe7.png"><br>

## Services:

#### - Mariadb :
MariaDB acts as a reliable and robust database management system, ensuring efficient data storage and retrieval for WordPress application. By running within a Docker container, MariaDB provides an isolated and portable environment, making deployment and scaling easier. This containerization facilitates seamless management and eliminates potential conflicts with the host system, ensuring a consistent and reproducible environment across different stages of development and deployment.

The integration of MariaDB with WordPress is critical as it enables your website or application to store essential data, such as user information, posts, comments, and various settings. It acts as the backbone of your dynamic content, efficiently handling read and write operations for smooth and responsive user experiences.

The connection between MariaDB and the WordPress container through port 3306 allows for secure communication and data transfer between the two components. By having this clear separation, you can manage and update each component independently without disrupting the other, promoting maintainability and minimizing potential points of failure.

The implementation of a Docker volume for data storage in MariaDB further enhances its importance. Docker volumes provide a reliable mechanism for persisting data outside the container's lifecycle. This means that even if the MariaDB container is stopped, restarted, or replaced, the data will persist in the volume, preventing data loss and promoting data durability.

The Docker volume also facilitates data backup and restoration processes, ensuring data integrity and reducing the risk of data corruption. Moreover, with the use of volumes, you can easily migrate your project to different environments without worrying about data transfer complications, making it highly portable and adaptable.

#### - Wordpress:
Installing WordPress on a Docker container and running PHP-FPM within that container, which interfaces with an Nginx server on port 9000, offers a range of benefits for the application. By leveraging Docker, create a portable and consistent environment, making deployment and scalability hassle-free. Running PHP-FPM on the container allows for efficient and optimized processing of PHP files, ensuring better performance and resource management.

The interface between PHP-FPM and Nginx through port 9000 promotes seamless communication and data exchange, enabling Nginx to serve PHP-generated content and handle web requests effectively. This decoupling of services enables independent updates and modifications, ensuring flexibility and ease of maintenance.

The critical advantage of sharing a Docker volume between the WordPress and Nginx containers lies in the preservation and synchronization of WordPress files. By storing these files in a common volume, you ensure that updates made within the WordPress container are instantly available to Nginx. This seamless sharing of data eliminates the need for manual file transfers or synchronization, streamlining the development process and reducing the risk of inconsistencies between the two containers.

#### - Nginx:
In this setup, Nginx is running within a Docker container, serving as the web server for your WordPress site hosted in another container. Both the Nginx container and the WordPress container share the same Docker volume, which allows them to access and share necessary files and data seamlessly. The Nginx container is configured to listen on the internet via port 443, providing secure HTTPS access to your WordPress site.

Running Nginx in a Docker container offers several advantages. Firstly, it provides an isolated environment for the web server, ensuring that any dependencies or configurations specific to Nginx do not interfere with the host system. This isolation promotes consistency and makes it easier to manage the web server's configuration across different environments.

Additionally, using Nginx as the web server for your WordPress site can significantly improve performance. Nginx is known for its high performance, efficiency, and low resource consumption. It can handle a large number of concurrent connections and efficiently serve static content, reducing the load on the backend application (in this case, WordPress) and improving response times for users.

Overall, the combination of Nginx running on a Docker container, serving the WordPress site hosted in another container with a shared volume, and listening on port 443 for HTTPS connections, creates a secure, scalable, and performant environment for hosting your WordPress website. This setup simplifies deployment, enhances data consistency, and ensures that your users can access your site securely and with optimal performance.

