# Use the latest Jenkins image as the base
FROM jenkins/jenkins:latest

# # Switch to root user to install additional packages
# USER root

# Update package lists and install lsb-release
RUN apt-get update && apt-get install -y lsb-release

# Download and add Docker GPG key
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg

# Add Docker repository to package sources
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list

# Update package lists and install Docker CLI
RUN apt-get update && apt-get install -y docker-ce-cli

# Switch back to the Jenkins user
USER jenkins 
# Use the latest Jenkins image as the base




# Install Jenkins plugins (blueocean and docker-workflow)
RUN jenkins-plugin-cli --plugins "blueocean:latest docker-workflow:521.v1a_a_dd2073b_2e"

# Print a message indicating that the server is running on port 8080
RUN echo "Server is running on port 8080"
# Ensure the script is executable


# Expose Jenkins web UI on port 8080
EXPOSE 8080

