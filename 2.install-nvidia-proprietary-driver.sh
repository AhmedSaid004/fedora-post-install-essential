#!/bin/bash

set -e

echo "🎮 بدء تثبيت تعريف NVIDIA الرسمي (akmod-nvidia)..."
sudo dnf install -y akmod-nvidia

echo "✅ تم تثبيت التعريف بنجاح!"

echo ""
read -p "❓ هل ترغب في إعادة تشغيل الجهاز الآن؟ (y/n): " answer

case "$answer" in
    [Yy]* )
        echo "🔄 جارٍ إعادة تشغيل الجهاز..."
        sleep 3
        sudo reboot
        ;;
    * )
        echo "❌ تم إلغاء إعادة التشغيل. يمكنك إعادة تشغيل الجهاز لاحقًا."
        ;;
esac
