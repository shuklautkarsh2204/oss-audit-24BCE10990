# --- Variables ---
STUDENT_NAME="Utkarsh Shukla"
SOFTWARE_CHOICE="Python"
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -ds)
CURRENT_DATE=$(date)

# --- Display ---
echo "=========================================="
echo "          Open Source Audit               "
echo "=========================================="
echo "Student: $STUDENT_NAME"
echo "Software Choice: $SOFTWARE_CHOICE"
echo "=========================================="
echo "OS Distro : $DISTRO"
echo "Kernel    : $KERNEL"
echo "User      : $USER_NAME"
echo "Home      : $HOME"
echo "Uptime    : $UPTIME"
echo "Date      : $CURRENT_DATE"
echo "=========================================="
# Mandatory license message as per project requirements 
echo "This operating system is covered by the Linux Kernel GPL v2 License."
