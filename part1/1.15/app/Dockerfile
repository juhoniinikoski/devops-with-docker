# Use the official Bun image
FROM oven/bun:1

# Create and set working directory
WORKDIR /app

# Copy package.json and bun.lockb (if it exists)
COPY package.json ./
COPY bun.lock ./

# Install dependencies
RUN bun install

# Copy source code
COPY src/ ./src/
COPY tsconfig.json ./

# Build the application
RUN bun run build

# Expose the port the app runs on
EXPOSE 4000

# Command to run the built application
CMD ["bun", "run", "start"]