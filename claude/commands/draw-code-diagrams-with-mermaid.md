---
description: "Generate Mermaid diagrams for visualizing code structure and relationships."
allowed-tools: ["Bash(npx -p @mermaid-js/mermaid-cli mmdc:*)"]
---

## Context

- The user wants to visualize code structure, data models, or process flows.
- The user has provided source files (SQL, code, docs) or a description of the system.

## Your task

Generate a Mermaid diagram to visualize the provided information.

## Process

1.  Analyze source files (SQL, code, docs) or the user''s description.
2.  Extract entities, relationships, and flows.
3.  Generate the appropriate diagram type (e.g., Entity Relationship, Flow Chart, Sequence, Class).
4.  Include relevant properties and methods in the diagram.
5.  Validate the Mermaid syntax.
6.  Save the diagram to a specified location or display it to the user.

## Examples

### Entity Relationship Diagram
```mermaid
erDiagram
    CUSTOMER ||--o{ ORDER : places
    ORDER ||--|{ LINE-ITEM : contains
```

### Flow Chart
```mermaid
flowchart TD
    A[Start] --> B{Decision}
    B -->|Yes| C[Process]
    B -->|No| D[End]
```

### Sequence Diagram
```mermaid
sequenceDiagram
    Client->>Server: Request
    Server->>Database: Query
    Database-->>Server: Result
    Server-->>Client: Response
```

### Class Diagram
```mermaid
classDiagram
    class Animal {
        +name: string
        +age: int
        +makeSound()
    }
```

## Notes

-   **Validation**: Run `npx -p @mermaid-js/mermaid-cli mmdc -i <input>.md -o test.md` to validate.
-   Keep diagrams focused and readable.
-   Use consistent naming conventions.
-   Group related entities.
-   Add labels to relationships and include cardinality where relevant.
-   Use subgraphs for organization and styling for clarity.
