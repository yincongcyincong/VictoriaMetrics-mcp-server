# Generated by https://smithery.ai. See: https://smithery.ai/docs/build/project-config
FROM node:lts-alpine

# Create app directory
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm install --production --ignore-scripts

# Copy source code
COPY src ./src

# Ensure entrypoint is executable
RUN chmod +x src/index.js

# Default environment variables (can be overridden)
ENV VM_URL="" \
    VM_SELECT_URL="" \
    VM_INSERT_URL=""

# Start the MCP server
CMD ["node", "src/index.js"]
