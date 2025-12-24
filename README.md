# ShellInABox Docker Image

This Docker image provides a web-based terminal using ShellInABox.

## How to Use

1. **Build the Docker image:**
   ```bash
   docker build -t shellinabox .
   ```

2. **Run the container:**
   ```bash
   docker run -d -p 4200:4200 shellinabox
   ```

3. **Access the web terminal:**
   Open your browser and navigate to `http://localhost:4200`.

## Notes
- The default login credentials are those of the host system.
- Ensure port 4200 is open and not blocked by a firewall.