---
title: "MCP Servers"
meta_title: ""
description: "MCP servers available through the CBORG AI Portal"
draft: false
---

## MCP Servers

*Last updated: 2026-06-04*

CBORG provides [Model Context Protocol (MCP)](https://modelcontextprotocol.io/) servers that extend AI models with real-time tool capabilities. MCP servers are accessible via the CBORG API at `https://api.cborg.lbl.gov/mcp/` and are compatible with any MCP-aware client (e.g. Claude Code, ZooCode, Cursor).

MCP tools are invoked automatically by the model when relevant to your request. Each tool call is currently billed at **$0.01 per query** against your API budget. Users who require high-volume MCP usage should contact [IT Support](mailto:ithelp@lbl.gov) to discuss budget options.

**Licensing Terms**

**Enterprise** = Service is licensed under UCOP and/or DOE negotiated enterprise agreements. Provider will not use your data for training. Acceptable for use with Prudent-to-Protect (P2P) Information (e.g. pre-publication data). May be approved for protected R&D information including ECI or S&T Matrix as part of an approved Access Plan. Please contact [IT Policy](mailto:itpolicy@lbl.gov) for more information.

**Commercial** = Service is licensed under non-negotiated standard commercial agreements. Provider will not use your data for training. Acceptable for use with non-sensitive open scientific data and pre-publication research. No S&T or ECI or anything with FN or sponsor-specified protections permitted. For details consult [IT Policy AI Tool Security Levels](https://docs.google.com/spreadsheets/d/1l-ZX0wAajcaQClKd6tAPxUDQUQhnj7CMTSYoR-J-cmc/edit?gid=0#gid=0)

### Available MCP Servers

| Server | Description | Tools | License |
| ------ | ----------- | :---: | :-----: |
| **Context7** | up-to-date documentation for any library | 2 | C |
| **Valency** | scientific literature search for arXiv, bioXriv and medXriv | 38 | E |

---

## Server Details

### Context7

Context7 - up-to-date documentation for any library

| Attribute | Value |
| --------- | ----- |
| **API Server ID** | `context7` |
| **Endpoint** | `https://mcp.context7.com/mcp` |
| **License** | C |
| **Tools** | 2 |

#### Available Tools

**`query-docs`** -- Query Documentation

Retrieves and queries up-to-date documentation and code examples from Context7 for any programming library or framework.

Parameters:
  - `libraryId` (string, required) -- Exact Context7-compatible library ID (e.g., '/mongodb/docs', '/vercel/next.js', '/supabase/supabase', '/vercel/next.js/v14.3.0-canary.87') retrieved from 'resolve-library-id' or directly from user ...
  - `query` (string, required) -- The question or task you need help with. Be specific and include relevant details. Good: 'How to set up authentication with JWT in Express.js' or 'React useEffect cleanup function examples'. Bad: '...

**`resolve-library-id`** -- Resolve Context7 Library ID

Resolves a package/product name to a Context7-compatible library ID and returns matching libraries.

Parameters:
  - `query` (string, required) -- The question or task you need help with. This is used to rank library results by relevance to what the user is trying to accomplish. The query is sent to the Context7 API for processing. Do not inc...
  - `libraryName` (string, required) -- Library name to search for and retrieve a Context7-compatible library ID. Use the official library name with proper punctuation — e.g., 'Next.js' instead of 'nextjs', 'Customer.io' instead of 'cust...

### Valency

Valency - scientific literature search for arXiv, bioXriv and medXriv

| Attribute | Value |
| --------- | ----- |
| **API Server ID** | `valency` |
| **Endpoint** | `https://labs.valency.io/mcp` |
| **License** | E |
| **Tools** | 38 |

#### Available Tools

**`analyze_corpus_metrics`**

Computes corpus-wide statistics Compute corpus-wide descriptive statistics for the Valency research paper collection.

Parameters:
  - `category` (string, optional) -- Optional: compute metrics for specific research domain only
  - `include_versions` (boolean, optional) -- If true, compute metrics over all versions of each paper (including revisions). Default false: metrics cover only unique papers (latest version of each)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to include all sources for a complete picture. Specify a source for source-specific analysis (e.g., biorxiv-only publication trends). Use li...

**`batch_author_categories`**

Returns category distributions for multiple authors in one call Get the research category distributions for up to 50 authors in a single request.

Parameters:
  - `authors` (array, required) -- List of author names (up to 50)
  - `max_categories` (integer, optional) -- Maximum categories per author (default: 20, max: 100). Controls how many categories are returned for each author
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to include all sources for a complete picture. Specify a source for source-specific analysis (e.g., biorxiv-only publication trends). Use li...

**`compare_authors`**

Compares multiple researchers side by side Accept 2-10 author names and return side-by-side profiles including category overlap, publication timelines, and shared categories.

Parameters:
  - `authors` (array, required) -- List of author names to compare (2-10)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to search all sources — recommended for broad discovery across preprint servers. Specify a single source only when you know results are conf...

**`count_papers`**

Counts papers matching filters (returns only a number, not paper data) Count how many papers match the given filters.

Parameters:
  - `start_date` (string, optional) -- Optional: Start date in YYYY-MM-DD format
  - `end_date` (string, optional) -- Optional: End date in YYYY-MM-DD format
  - `category` (string, optional) -- Optional: Category code (e.g., cs.AI, math.GT)
  - `author` (string, optional) -- Optional: Author name to filter by (prefix match by default; see strict_mode)
  - `strict_mode` (string, optional) -- Match mode: 'prefix' (default, fast literal prefix match), 'fuzzy' (intelligent name variant matching: initials, abbreviations, and name order variations; more accurate but slower), or 'exact' (fas...
  - `title_query` (string, optional) -- Optional: Title keywords (full-text search)
  - `license` (string, optional) -- Optional: License pattern (e.g., 'by/4.0' for CC-BY, 'zero' for CC0, 'nonexclusive' for arxiv default)
  - `include_versions` (boolean, optional) -- If true, count all versions of each paper (including revisions). Default false: counts only unique papers (latest version). Note: combining include_versions=true with both author AND a version filt...
  - `version` (integer, optional) -- Optional: exact paper-version filter. With include_versions=false (default), matches papers whose latest version equals this value (so version=1 counts papers that have never been revised). With in...
  - `version_min` (integer, optional) -- Optional: inclusive lower bound on paper version. With include_versions=false (default), filters on each paper's latest version — version_min=2 counts papers that have been revised at least once. W...
  - `version_max` (integer, optional) -- Optional: inclusive upper bound on paper version. With include_versions=false (default), filters on each paper's latest version — so version_min=2, version_max=3 counts papers whose latest version ...
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to include all sources for a complete picture. Specify a source for source-specific analysis (e.g., biorxiv-only publication trends). Use li...

**`export_from_filter`**

Exports papers matching a filter as in-memory content Combine a filter/search operation with export in a single call.

Parameters:
  - `license` (string, optional) -- Optional: License pattern (e.g., 'by/4.0')
  - `category` (string, optional) -- Optional: Category filter (e.g., 'astro-ph.GA')
  - `start_date` (string, optional) -- Optional: Start date in YYYY-MM-DD format
  - `end_date` (string, optional) -- Optional: End date in YYYY-MM-DD format
  - `format` (string, optional) -- Export format (default: 'csv')
  - `fields` (array, optional) -- Optional: specific fields to include in CSV export
  - `limit` (integer, optional) -- Maximum papers to export (default: 200, max: 1000)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Providing source speeds up the query via partition pruning. Omit to search all sources. Use list_sources to discover available sources

**`export_papers_bibtex`**

Exports papers as BibTeX references Export a collection of papers from the Valency corpus as BibTeX references.

Parameters:
  - `paper_ids` (array, required) -- List of paper IDs to export as BibTeX

**`export_papers_csv`**

Exports papers to CSV format Export a collection of papers from the Valency corpus to CSV format.

Parameters:
  - `paper_ids` (array, required) -- List of paper IDs to export
  - `fields` (array, optional) -- Optional: specific fields to include (default: all)

**`export_papers_json`**

Exports papers to JSON format Export a collection of papers from the Valency corpus to JSON format.

Parameters:
  - `paper_ids` (array, required) -- List of paper IDs to export

**`filter_by_categories`**

Filters papers across multiple domains (recency-ordered) Filter the Valency corpus across multiple research domains.

Parameters:
  - `categories` (array, required) -- List of categories (e.g., ['cs.AI', 'cs.LG', 'stat.ML'])
  - `limit` (integer, optional) -- Maximum number of results to return (default: 50, max: 500)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Providing source speeds up the query via partition pruning. Omit to search all sources. Use list_sources to discover available sources
  - `max_authors` (integer, optional) -- Maximum number of authors to return per paper (default: 20, max: 500). Author lists longer than this value are truncated and 'authors_truncated': true and 'total_authors': N are added to the paper ...
  - `include_abstract` (boolean, optional) -- Whether to include paper abstracts in results (default: true). Set to false to omit abstracts and reduce response size. Most useful for initial triage when only titles and IDs are needed
  - `sort_by` (string, optional) -- Sort order for results. 'relevance' (default) orders by search relevance or recency. 'citations' orders by citation count descending (most-cited first). Papers without citation data appear last whe...
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...

**`filter_by_date_range`**

Filters papers by publication date (recency-ordered) Filter the Valency corpus by temporal range.

Parameters:
  - `start_date` (string, required) -- Start date in YYYY-MM-DD format
  - `end_date` (string, required) -- End date in YYYY-MM-DD format
  - `category` (string, optional) -- Optional: filter by category as well
  - `limit` (integer, optional) -- Maximum number of results to return (default: 50, max: 500)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Providing source speeds up the query via partition pruning. Omit to search all sources. Use list_sources to discover available sources
  - `max_authors` (integer, optional) -- Maximum number of authors to return per paper (default: 20, max: 500). Author lists longer than this value are truncated and 'authors_truncated': true and 'total_authors': N are added to the paper ...
  - `include_abstract` (boolean, optional) -- Whether to include paper abstracts in results (default: true). Set to false to omit abstracts and reduce response size. Most useful for initial triage when only titles and IDs are needed
  - `sort_by` (string, optional) -- Sort order for results. 'relevance' (default) orders by search relevance or recency. 'citations' orders by citation count descending (most-cited first). Papers without citation data appear last whe...
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...

**`filter_by_license`**

Filters papers by license type (CC-BY, CC0, arxiv default, etc.) Filter papers by license type.

Parameters:
  - `license` (string, required) -- License pattern (e.g., 'by/4.0' for CC-BY, 'zero' for CC0, 'nonexclusive' for arxiv default)
  - `category` (string, optional) -- Optional: category filter to narrow results
  - `limit` (integer, optional) -- Maximum number of results to return (default: 50, max: 200)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Providing source speeds up the query via partition pruning. Omit to search all sources. Use list_sources to discover available sources
  - `max_authors` (integer, optional) -- Maximum number of authors to return per paper (default: 20, max: 500). Author lists longer than this value are truncated and 'authors_truncated': true and 'total_authors': N are added to the paper ...
  - `include_abstract` (boolean, optional) -- Whether to include paper abstracts in results (default: true). Set to false to omit abstracts and reduce response size. Most useful for initial triage when only titles and IDs are needed
  - `sort_by` (string, optional) -- Sort order for results. 'relevance' (default) orders by search relevance or recency. 'citations' orders by citation count descending (most-cited first). Papers without citation data appear last whe...
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...

**`filter_papers_with_doi`**

Finds papers with DOI identifiers Retrieve papers from the Valency corpus with DOI metadata.

Parameters:
  - `category` (string, optional) -- Optional: filter by category as well
  - `limit` (integer, optional) -- Maximum number of results to return (default: 50, max: 500)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Providing source speeds up the query via partition pruning. Omit to search all sources. Use list_sources to discover available sources
  - `max_authors` (integer, optional) -- Maximum number of authors to return per paper (default: 20, max: 500). Author lists longer than this value are truncated and 'authors_truncated': true and 'total_authors': N are added to the paper ...
  - `include_abstract` (boolean, optional) -- Whether to include paper abstracts in results (default: true). Set to false to omit abstracts and reduce response size. Most useful for initial triage when only titles and IDs are needed
  - `sort_by` (string, optional) -- Sort order for results. 'relevance' (default) orders by search relevance or recency. 'citations' orders by citation count descending (most-cited first). Papers without citation data appear last whe...
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...

**`find_coauthors`**

Finds an author's most frequent collaborators Given an author name, returns their most frequent collaborators ranked by number of co-authored papers.

Parameters:
  - `author` (string, required) -- Author name. Resolved against normalized author names using exact, prefix, and surname heuristics
  - `limit` (integer, optional) -- Maximum number of co-authors to return (default: 20, max: 100)
  - `exclude_mega_collaborations` (boolean, optional) -- If true, exclude papers with more than 100 authors from the co-author analysis. This makes results meaningful for authors involved in large collaborations (e.g., LIGO, ATLAS) where all ~1000 co-aut...
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to search all sources — recommended for broad discovery across preprint servers. Specify a single source only when you know results are conf...

**`find_papers_by_researcher`**

Finds papers by a specific disambiguated researcher (more precise than search_by_author) Find all papers in our corpus by a specific researcher, using disambiguation to avoid conflating different people with the same name.

Parameters:
  - `author` (string, optional) -- Author name. Required if neither orcid nor openalex_author_id is provided
  - `orcid` (string, optional) -- ORCID identifier (e.g., '0000-0002-1825-0097'). When provided, used for direct author disambiguation — more precise than name-based matching
  - `openalex_author_id` (string, optional) -- Direct disambiguated author identifier. The preferred form after selecting from a candidates[] list returned by a prior call
  - `paper_id` (string, optional) -- Paper ID for disambiguation hint when using author name
  - `limit` (integer, optional) -- Maximum total papers to return (default: 50, max: 200). Hard cap on the size of papers[]. Under the default recency sort the bucket priority is: the likely-real tier (verified rows interleaved with...
  - `sort_by` (string, optional) -- Sort order (default: recency). 'citations' sorts by citation count descending
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to search all sources — recommended for broad discovery across preprint servers. Specify a single source only when you know results are conf...
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...

**`find_similar_papers`**

Finds papers semantically similar to a given paper Given a paper ID, find other papers with similar content using vector similarity.

Parameters:
  - `paper_id` (string, required) -- Paper ID (e.g., '1706.03762v7' or '1706.03762')
  - `limit` (integer, optional) -- Maximum number of similar papers to return (default: 10, max: 50)
  - `source` (string, optional) -- Source of the seed paper (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Used to locate the seed paper's embedding efficiently via partition pruning. Omit to auto-detect the seed paper's source. For backwar...
  - `result_source` (string, optional) -- Filter results to a specific source (e.g., 'biorxiv'). Overrides source for result filtering. Omit to fall back to source-based filtering (if source is set) or return similar papers from all source...
  - `start_date` (string, optional) -- Optional: Start date in YYYY-MM-DD format
  - `end_date` (string, optional) -- Optional: End date in YYYY-MM-DD format
  - `max_authors` (integer, optional) -- Maximum number of authors to return per paper (default: 20, max: 500). Author lists longer than this value are truncated and 'authors_truncated': true and 'total_authors': N are added to the paper ...
  - `include_abstract` (boolean, optional) -- Whether to include paper abstracts in results (default: true). Set to false to omit abstracts and reduce response size. Most useful for initial triage when only titles and IDs are needed
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...

**`get_author_identity`**

Resolves an author to a disambiguated researcher profile with career stats Resolve an author name (or ORCID) to a unique researcher profile with career-level metrics: h-index, total works, total citations, ORCID, institutional affiliations (ranked by author-work frequency), and current_institution.

Parameters:
  - `author` (string, optional) -- Author name. Required if neither orcid nor openalex_author_id is provided. Resolved against normalized author names in the corpus
  - `paper_id` (string, optional) -- Paper ID to use as disambiguation hint (e.g., '1706.03762v7') on the author-name resolution path. Used only when neither openalex_author_id nor orcid is supplied — those are higher-precedence input...
  - `orcid` (string, optional) -- ORCID identifier (e.g., '0000-0002-1825-0097'). When provided, used for direct author disambiguation — more precise than name-based matching
  - `openalex_author_id` (string, optional) -- Direct disambiguated author identifier. The preferred form after selecting from a candidates[] list returned by a prior call
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to search all sources — recommended for broad discovery across preprint servers. Specify a single source only when you know results are conf...

**`get_author_profile`**

Returns a comprehensive summary profile for a researcher Get a researcher's profile: top categories, publication timeline (first/last paper, papers per year), co-author count, and total papers.

Parameters:
  - `author` (string, required) -- Author name. Resolved against normalized author names using exact, prefix, and surname heuristics
  - `orcid` (string, optional) -- ORCID identifier (e.g., '0000-0002-1825-0097'). When provided, used for direct author disambiguation — more precise than name-based matching
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to search all sources — recommended for broad discovery across preprint servers. Specify a single source only when you know results are conf...

**`get_citing_papers`**

Finds papers that cite a given paper Given a Valency paper ID, find papers that cite it using the upstream citation graph.

Parameters:
  - `paper_id` (string, required) -- Valency paper ID (e.g., '1706.03762v7', '10.1101/2024.03.15.585123v1')
  - `limit` (integer, optional) -- Maximum citing papers to return (default: 20, max: 100)
  - `sort_by` (string, optional) -- 'citations' (most-cited citers first, default), 'year' (most recent first), 'year_asc' (chronological — see how influence spread over time)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Providing source speeds up the query via partition pruning. Omit to search all sources. Use list_sources to discover available sources
  - `max_authors` (integer, optional) -- Maximum number of authors to return per paper (default: 20, max: 500). Author lists longer than this value are truncated and 'authors_truncated': true and 'total_authors': N are added to the paper ...

**`get_field_coverage`**

Returns most common values for a metadata field Get the top N most common values for a metadata field (e.g., journal_ref).

Parameters:
  - `field` (string, required) -- Field name to analyze (currently supports 'journal_ref' and 'license'; both are populated only for source='arxiv')
  - `category` (string, optional) -- Optional: category filter to narrow results. Validated against the known category set; an unknown code returns an UNKNOWN_CATEGORY warning instead of silently empty results
  - `limit` (integer, optional) -- Number of top values to return (default: 20, max: 100)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Providing source speeds up the query via partition pruning. Omit to search all sources. Use list_sources to discover available sources

**`get_keyword_trends`**

Returns paper counts over time for a keyword/abstract search Get publication volume trends filtered by abstract keyword search, binned by month, year, or week.

Parameters:
  - `query` (string, required) -- Keywords to search for in paper abstracts (full-text search)
  - `category` (string, optional) -- Optional: category filter (e.g., 'cs.AI')
  - `granularity` (string, optional) -- Time bin granularity (default: 'month')
  - `start_date` (string, optional) -- Optional: Start date in YYYY-MM-DD format
  - `end_date` (string, optional) -- Optional: End date in YYYY-MM-DD format
  - `format` (string, optional) -- Response format: 'standard' (default) or 'compact' (~60% fewer tokens)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to include all sources for a complete picture. Specify a source for source-specific analysis (e.g., biorxiv-only publication trends). Use li...

**`get_paper_by_id`**

Retrieves a single paper by its ID Direct lookup of a paper by its ID.

Parameters:
  - `paper_id` (string, required) -- Paper ID — a versioned ID (e.g., '2301.07041v3'), a base ID (e.g., '2301.07041', returns latest version), or a PubMed Central identifier with a case-insensitive PMC prefix followed by digits (e.g.,...
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Providing source speeds up the query via partition pruning. Omit to search all sources. Use list_sources to discover available sources
  - `max_authors` (integer, optional) -- Maximum number of authors to return per paper (default: 20, max: 500). Author lists longer than this value are truncated and 'authors_truncated': true and 'total_authors': N are added to the paper ...
  - `include_abstract` (boolean, optional) -- Whether to include paper abstracts in results (default: true). Set to false to omit abstracts and reduce response size. Most useful for initial triage when only titles and IDs are needed
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...

**`get_paper_versions`**

Returns all versions of a paper showing its revision history Given a paper ID (base or versioned), returns all versions showing how the paper evolved over time.

Parameters:
  - `paper_id` (string, required) -- Paper ID — either a base_id (e.g., '2301.07041') or a versioned ID (e.g., '2301.07041v2'). If versioned, the version suffix is stripped automatically
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Providing source speeds up the query via partition pruning. Omit to search all sources. Use list_sources to discover available sources

**`get_publication_trends`**

Returns paper counts over time for a category, binned by month or year Get publication volume trends for a research category over time.

Parameters:
  - `category` (string, required) -- Category code (e.g., cs.AI, cs.LG, math.GT)
  - `granularity` (string, optional) -- Time bin granularity (default: 'month')
  - `start_date` (string, optional) -- Optional: Start date in YYYY-MM-DD format
  - `end_date` (string, optional) -- Optional: End date in YYYY-MM-DD format
  - `format` (string, optional) -- Response format: 'standard' (default, array of {period, paper_count}) or 'compact' (nested dict like {"2022": {"01": 311, ...}}, ~60% fewer tokens)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to include all sources for a complete picture. Specify a source for source-specific analysis (e.g., biorxiv-only publication trends). Use li...

**`get_publication_trends_batch`**

Returns paper counts over time for multiple categories in one call Get publication volume trends for multiple research categories in a single request.

Parameters:
  - `categories` (array, required) -- List of category codes (e.g., ['cs.AI', 'cs.LG', 'q-fin.ST'])
  - `granularity` (string, optional) -- Time bin granularity (default: 'month')
  - `start_date` (string, optional) -- Optional: Start date in YYYY-MM-DD format
  - `end_date` (string, optional) -- Optional: End date in YYYY-MM-DD format
  - `format` (string, optional) -- Response format: 'standard' (default) or 'compact' (~60% fewer tokens)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to include all sources for a complete picture. Specify a source for source-specific analysis (e.g., biorxiv-only publication trends). Use li...

**`identify_prolific_authors`**

Ranks author-name strings by publication count, with author-identity disambiguation flags Identify most prolific contributors within the Valency corpus by publication count.

Parameters:
  - `category` (string, optional) -- Optional: limit to specific research domain (e.g. 'cs.AI', 'astro-ph'). Cannot be combined with source — if both are provided, category is used and source is ignored
  - `limit` (integer, optional) -- Number of researchers to return (default: 20, max: 100)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to include all sources for a complete picture. Specify a source for source-specific analysis (e.g., biorxiv-only publication trends). Use li...

**`identify_research_domains`**

Ranks research domains by volume Identify predominant research domains within the Valency corpus by publication volume.

Parameters:
  - `limit` (integer, optional) -- Number of research domains to return (default: 20, max: 100)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to include all sources for a complete picture. Specify a source for source-specific analysis (e.g., biorxiv-only publication trends). Use li...

**`list_sources`**

Lists available paper sources with counts and date ranges Discover all available paper sources in the Valency corpus (e.g., arxiv, biorxiv, medrxiv).

**`resolve_orcid`**

Looks up a researcher by ORCID and returns their profile and corpus papers Given an ORCID identifier, return the researcher's profile (career metrics, institutional affiliations) and their papers in our corpus.

Parameters:
  - `orcid` (string, required) -- ORCID identifier (e.g., '0000-0002-7714-0998')
  - `limit` (integer, optional) -- Maximum papers to return (default: 50, max: 200)
  - `sort_by` (string, optional) -- Sort order for papers (default: recency)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to search all sources — recommended for broad discovery across preprint servers. Specify a single source only when you know results are conf...
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...

**`search_by_abstract`**

Finds papers by abstract content Query the Valency corpus by abstract content.

Parameters:
  - `query` (string, required) -- Keywords to search for
  - `category` (string, optional) -- Optional: category filter to limit results (e.g., cs.AI, astro-ph.HE)
  - `exclude_categories` (array, optional) -- Optional: list of category codes to exclude from results (e.g., ['q-bio', 'physics.bio-ph']). A bare parent code like 'q-bio' also excludes its subcategories ('q-bio.PE', etc.). Useful for narrowin...
  - `limit` (integer, optional) -- Maximum number of results to return (default: 10, max: 200)
  - `start_date` (string, optional) -- Optional: Start date in YYYY-MM-DD format
  - `end_date` (string, optional) -- Optional: End date in YYYY-MM-DD format
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to search all sources — recommended for broad discovery across preprint servers. Specify a single source only when you know results are conf...
  - `max_authors` (integer, optional) -- Maximum number of authors to return per paper (default: 20, max: 500). Author lists longer than this value are truncated and 'authors_truncated': true and 'total_authors': N are added to the paper ...
  - `include_abstract` (boolean, optional) -- Whether to include paper abstracts in results (default: true). Set to false to omit abstracts and reduce response size. Most useful for initial triage when only titles and IDs are needed
  - `sort_by` (string, optional) -- Sort order for results. 'relevance' (default) orders by search relevance or recency. 'citations' orders by citation count descending (most-cited first). Papers without citation data appear last whe...
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...
  - `author` (string, optional) -- Optional: restrict results to papers with at least one author whose name matches. Pairs well with the keyword query for combined-filter questions like 'papers about supernovae written by author X'....
  - `strict_mode` (string, optional) -- Optional: author match mode when ``author`` is set. 'prefix' (default, fast literal prefix match), 'fuzzy' (intelligent name variant matching: initials, abbreviations, and name order variations; mo...
  - `phrase_mode` (boolean, optional) -- Optional: when true, the entire query is matched as a strict contiguous phrase (default: false). Use for polysemous multi-word terms where the tokens must appear adjacent in the abstract — e.g. 'nu...

**`search_by_abstract_batch`**

Runs multiple abstract FTS queries in one call with deduplicated results and per-paper provenance Run 1..10 abstract keyword queries against the Valency corpus in a single SQL round-trip.

Parameters:
  - `queries` (array, required) -- List of keyword queries to OR-match (1..10). Each entry is a standalone abstract-FTS query — papers matching any input query appear once in the result set with a ``matched_queries`` field listing w...
  - `category` (string, optional) -- Optional: category filter applied to every query in the batch
  - `exclude_categories` (array, optional) -- Optional: list of category codes to exclude (e.g., ['q-bio']). Same semantics as ``search_by_abstract``; applied to every query
  - `limit` (integer, optional) -- Maximum unique papers to return (default: 50, max: 200)
  - `start_date` (string, optional) -- Optional: Start date in YYYY-MM-DD format
  - `end_date` (string, optional) -- Optional: End date in YYYY-MM-DD format
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to search all sources — recommended for broad discovery across preprint servers. Specify a single source only when you know results are conf...
  - `max_authors` (integer, optional) -- Maximum number of authors to return per paper (default: 20, max: 500). Author lists longer than this value are truncated and 'authors_truncated': true and 'total_authors': N are added to the paper ...
  - `include_abstract` (boolean, optional) -- Whether to include paper abstracts in results (default: true). Set to false to omit abstracts and reduce response size. Most useful for initial triage when only titles and IDs are needed
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...
  - `phrase_mode` (boolean, optional) -- Optional: when true, the entire query is matched as a strict contiguous phrase (default: false). Use for polysemous multi-word terms where the tokens must appear adjacent in the abstract — e.g. 'nu...

**`search_by_author`**

Finds papers by author name (name matching only, no identity resolution) Retrieve publications by author name within the Valency corpus.

Parameters:
  - `author` (string, required) -- Author name (partial matches accepted)
  - `limit` (integer, optional) -- Maximum number of results to return (default: 10, max: 200)
  - `strict_mode` (string, optional) -- Match mode: 'prefix' (default, fast literal prefix match), 'fuzzy' (intelligent name variant matching: initials, abbreviations, and name order variations; more accurate but slower), or 'exact' (fas...
  - `start_date` (string, optional) -- Optional: Start date in YYYY-MM-DD format
  - `end_date` (string, optional) -- Optional: End date in YYYY-MM-DD format
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to search all sources — recommended for broad discovery across preprint servers. Specify a single source only when you know results are conf...
  - `max_authors` (integer, optional) -- Maximum number of authors to return per paper (default: 20, max: 500). Author lists longer than this value are truncated and 'authors_truncated': true and 'total_authors': N are added to the paper ...
  - `include_abstract` (boolean, optional) -- Whether to include paper abstracts in results (default: true). Set to false to omit abstracts and reduce response size. Most useful for initial triage when only titles and IDs are needed
  - `sort_by` (string, optional) -- Sort order for results. 'relevance' (default) orders by search relevance or recency. 'citations' orders by citation count descending (most-cited first). Papers without citation data appear last whe...
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...

**`search_by_category`**

Finds papers in a research domain (recency-ordered) Query the Valency corpus by research domain (e.g., 'cs.AI', 'math.GT', 'physics.astro-ph').

Parameters:
  - `category` (string, required) -- Category code (e.g., cs.AI, cs.LG, math.GT)
  - `limit` (integer, optional) -- Maximum number of results to return (default: 50, max: 200)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Providing source speeds up the query via partition pruning. Omit to search all sources. Use list_sources to discover available sources
  - `max_authors` (integer, optional) -- Maximum number of authors to return per paper (default: 20, max: 500). Author lists longer than this value are truncated and 'authors_truncated': true and 'total_authors': N are added to the paper ...
  - `include_abstract` (boolean, optional) -- Whether to include paper abstracts in results (default: true). Set to false to omit abstracts and reduce response size. Most useful for initial triage when only titles and IDs are needed
  - `sort_by` (string, optional) -- Sort order for results. 'relevance' (default) orders by search relevance or recency. 'citations' orders by citation count descending (most-cited first). Papers without citation data appear last whe...
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...

**`search_by_comments`**

Searches the arxiv `comments` field for venue names, acceptance notes, and author notes Full-text search over the paper `comments` field (arxiv `arxiv:comments` / author notes, typically populated on arxiv and rarely elsewhere).

Parameters:
  - `query` (string, required) -- Websearch-style query against the arxiv `comments` field (e.g. 'ICRA 2026', '"CVPR 2026"', 'accepted NeurIPS'). Multi-word phrases can be quoted; terms can be combined with OR
  - `category` (string, optional) -- Optional: category filter to narrow results
  - `limit` (integer, optional) -- Maximum number of results to return (default: 20, max: 200)
  - `start_date` (string, optional) -- Optional: Start date in YYYY-MM-DD format
  - `end_date` (string, optional) -- Optional: End date in YYYY-MM-DD format
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to search all sources — recommended for broad discovery across preprint servers. Specify a single source only when you know results are conf...
  - `max_authors` (integer, optional) -- Maximum number of authors to return per paper (default: 20, max: 500). Author lists longer than this value are truncated and 'authors_truncated': true and 'total_authors': N are added to the paper ...
  - `include_abstract` (boolean, optional) -- Whether to include paper abstracts in results (default: true). Set to false to omit abstracts and reduce response size. Most useful for initial triage when only titles and IDs are needed
  - `sort_by` (string, optional) -- Sort order for results. 'relevance' (default) orders by search relevance or recency. 'citations' orders by citation count descending (most-cited first). Papers without citation data appear last whe...
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...

**`search_by_title`**

Finds academic papers by title keywords Query the Valency corpus by title keywords.

Parameters:
  - `query` (string, required) -- Keywords to search for
  - `limit` (integer, optional) -- Maximum number of results to return (default: 10, max: 200)
  - `start_date` (string, optional) -- Optional: Start date in YYYY-MM-DD format
  - `end_date` (string, optional) -- Optional: End date in YYYY-MM-DD format
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to search all sources — recommended for broad discovery across preprint servers. Specify a single source only when you know results are conf...
  - `max_authors` (integer, optional) -- Maximum number of authors to return per paper (default: 20, max: 500). Author lists longer than this value are truncated and 'authors_truncated': true and 'total_authors': N are added to the paper ...
  - `include_abstract` (boolean, optional) -- Whether to include paper abstracts in results (default: true). Set to false to omit abstracts and reduce response size. Most useful for initial triage when only titles and IDs are needed
  - `sort_by` (string, optional) -- Sort order for results. 'relevance' (default) orders by search relevance or recency. 'citations' orders by citation count descending (most-cited first). Papers without citation data appear last whe...
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...
  - `semantic_fallback` (boolean, optional) -- Whether to fall back to semantic search when keyword search returns insufficient results (default: true). Set to false for faster responses when only keyword matches are needed. Ignored when ``auth...
  - `author` (string, optional) -- Optional: restrict results to papers with at least one author whose name matches. Pairs well with the keyword query for combined-filter questions like 'papers about supernovae written by author X'....
  - `category` (string, optional) -- Optional: category filter (e.g., 'astro-ph', 'cs.AI'). A bare parent code ('astro-ph') also matches its subcategories ('astro-ph.HE' etc.); a dotted code matches only that subcategory
  - `strict_mode` (string, optional) -- Optional: author match mode when ``author`` is set. 'prefix' (default, fast literal prefix match), 'fuzzy' (intelligent name variant matching: initials, abbreviations, and name order variations; mo...

**`search_by_venue`**

Searches papers by publication venue (journal or conference) Search papers by publication venue using the journal_ref field.

Parameters:
  - `venue` (['string', 'array'], required) -- Venue name or pattern (e.g. 'Nature', 'NeurIPS', 'Physical Review'), OR a list of patterns to OR-match — useful for conferences that are known by both an acronym and a full title, e.g. ['ICRA', 'In...
  - `category` (string, optional) -- Optional: category filter to narrow results
  - `query` (string, optional) -- Optional: keyword query to filter results by abstract content (e.g., 'machine learning transient')
  - `include_comments` (boolean, optional) -- If true, also match the venue pattern against the arxiv `comments` field via full-text search. Turn this on when looking for a RECENT conference whose papers may have been accepted but not yet publ...
  - `limit` (integer, optional) -- Maximum number of results to return (default: 20, max: 200)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to search all sources — recommended for broad discovery across preprint servers. Specify a single source only when you know results are conf...
  - `max_authors` (integer, optional) -- Maximum number of authors to return per paper (default: 20, max: 500). Author lists longer than this value are truncated and 'authors_truncated': true and 'total_authors': N are added to the paper ...
  - `include_abstract` (boolean, optional) -- Whether to include paper abstracts in results (default: true). Set to false to omit abstracts and reduce response size. Most useful for initial triage when only titles and IDs are needed
  - `sort_by` (string, optional) -- Sort order for results. 'relevance' (default) orders by search relevance or recency. 'citations' orders by citation count descending (most-cited first). Papers without citation data appear last whe...
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...

**`search_cross_category`**

Searches abstracts across multiple categories simultaneously Search for papers across multiple research categories at once.

Parameters:
  - `query` (string, required) -- Keywords to search for in abstracts
  - `categories` (array, required) -- List of category codes to search across (e.g., ['q-fin.CP', 'quant-ph'])
  - `limit` (integer, optional) -- Maximum number of results to return (default: 20, max: 200)
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to search all sources — recommended for broad discovery across preprint servers. Specify a single source only when you know results are conf...
  - `max_authors` (integer, optional) -- Maximum number of authors to return per paper (default: 20, max: 500). Author lists longer than this value are truncated and 'authors_truncated': true and 'total_authors': N are added to the paper ...
  - `include_abstract` (boolean, optional) -- Whether to include paper abstracts in results (default: true). Set to false to omit abstracts and reduce response size. Most useful for initial triage when only titles and IDs are needed
  - `sort_by` (string, optional) -- Sort order for results. 'relevance' (default) orders by search relevance or recency. 'citations' orders by citation count descending (most-cited first). Papers without citation data appear last whe...
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...

**`semantic_search_papers`**

Searches papers by semantic meaning using AI embeddings Find papers conceptually similar to your query using AI embeddings.

Parameters:
  - `query` (string, required) -- Natural language search query describing the research topic or concept
  - `category` (string, optional) -- Optional category filter to limit results (e.g., cs.AI, cs.LG, math.GT)
  - `limit` (integer, optional) -- Maximum number of results to return (default: 20, max: 100)
  - `start_date` (string, optional) -- Optional: Start date in YYYY-MM-DD format
  - `end_date` (string, optional) -- Optional: End date in YYYY-MM-DD format
  - `source` (string, optional) -- Paper source (e.g., 'arxiv', 'biorxiv', 'medrxiv'). Omit to search all sources — recommended for broad discovery across preprint servers. Specify a single source only when you know results are conf...
  - `max_authors` (integer, optional) -- Maximum number of authors to return per paper (default: 20, max: 500). Author lists longer than this value are truncated and 'authors_truncated': true and 'total_authors': N are added to the paper ...
  - `include_abstract` (boolean, optional) -- Whether to include paper abstracts in results (default: true). Set to false to omit abstracts and reduce response size. Most useful for initial triage when only titles and IDs are needed
  - `sort_by` (string, optional) -- Sort order for results. 'relevance' (default) orders by search relevance or recency. 'citations' orders by citation count descending (most-cited first). Papers without citation data appear last whe...
  - `enrich_citations` (boolean, optional) -- Whether to fetch citation counts for each result (default: true — adds a citation_count field, usually populated from the local cache). The value may still be null when no upstream count is availab...
  - `phrase_mode` (boolean, optional) -- Optional: when true, the BM25 reranking component (5% of the hybrid score) treats the query as a strict phrase. The 70% semantic component is unchanged — vector embeddings have no notion of phrase ...

**`submit_feedback`**

Submit client feedback about Valency search quality, bugs, and/or feature requests Submit feedback about your experience with Valency.

Parameters:
  - `inquiry_summary` (string, optional) -- High-level summary of the user's goal or research question. Auto-populate from conversation context rather than asking the user to narrate. Keep this concise and redacted — no raw queries, PII, sec...
  - `bug_report` (string, optional) -- Description of any bug or issue encountered
  - `feature_request` (string, optional) -- Description of a desired feature or improvement
  - `search_quality` (integer, optional) -- Rating of search result quality (1=worst, 10=best)
  - `data_quality` (integer, optional) -- Rating of data/metadata quality (1=worst, 10=best)
  - `response_time_perception` (integer, optional) -- Rating of perceived response speed (1=worst, 10=best)
  - `nps_score` (integer, optional) -- Net Promoter Score: how likely to recommend (1=not at all, 10=extremely likely)
  - `num_valency_calls_this_session` (integer, optional) -- Number of Valency tool calls made in the current session
  - `context` (object, optional) -- Optional context about the session (e.g. tool names used, high-level keywords). Do not include raw user queries, identifiers, or sensitive data. Max 10KB

---

## Using MCP Servers via the API

MCP tools are exposed through the standard OpenAI-compatible `/v1/responses` endpoint. Pass the server name in the `tools` parameter to enable its tools:

```python
import openai

client = openai.OpenAI(
    base_url="https://api.cborg.lbl.gov/v1",
    api_key="<your-cborg-api-key>",
)

response = client.responses.create(
    model="lbl/cborg-coder:latest",
    tools=[{"type": "mcp", "server_label": "context7"}],
    input="What are the main features of the httpx library?",
)
print(response.output_text)
```

You can also access the raw MCP endpoint directly at `https://api.cborg.lbl.gov/mcp/` using the standard JSON-RPC 2.0 protocol.
