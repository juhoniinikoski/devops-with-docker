FROM oven/bun:1-slim AS builder

WORKDIR /app

COPY package.json bun.lock ./
RUN bun install

COPY src/ ./src/
COPY tsconfig.json ./
RUN bun run build

FROM oven/bun:1-distroless

USER honouser

WORKDIR /app

COPY --from=builder /app/dist ./dist

EXPOSE 4000

CMD ["dist/index.js"]