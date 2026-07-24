# Moodle Production Readiness Sprint - Team C

## Architecture & Stack
- **OS:** Ubuntu Server 24.04 LTS
- **Web Server:** Apache2
- **Database:** MariaDB
- **Application:** Moodle LMS

## Repository Structure
- `install.sh`: Automated idempotent installation script.
- `validate.sh`: Environment and service verification script.
- `.env.example`: Template for environment variables.
- `monitoring/`: Monitoring scripts and health checks.
- `backup/`: Backup and restore utility references.
- `evidence/`: Verification logs, screenshots, and proof of execution.
