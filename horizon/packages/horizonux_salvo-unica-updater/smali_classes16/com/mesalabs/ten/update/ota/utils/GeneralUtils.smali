.class public Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;
.super Ljava/lang/Object;
.source "GeneralUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GeneralUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rm -f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/ota/utils/SystemUtils;->shell(Ljava/lang/String;Z)Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static dismissNotifications(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 175
    const-string v0, "GeneralUtils"

    const-string v1, "Dismissing notifications"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 178
    .local v0, "mNotifyManager":Landroid/app/NotificationManager;
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 179
    return-void
.end method

.method public static isNotificationAlarmSet(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mesalabs/ten/update/ota/receivers/AppReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mesalabs.ten.ota.START_UPDATE_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const/16 v1, 0x689

    const/high16 v2, 0x20000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static scheduleNotification(Landroid/content/Context;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Z

    .line 52
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 53
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mesalabs/ten/update/ota/receivers/AppReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.mesalabs.ten.ota.START_UPDATE_CHECK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const/16 v2, 0x689

    .line 56
    .local v2, "intentId":I
    const/high16 v3, 0x8000000

    .line 58
    .local v3, "intentFlag":I
    const-string v4, "GeneralUtils"

    if-eqz p1, :cond_0

    .line 59
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceCheckFrequency()I

    move-result v5

    .line 61
    .local v5, "requestedInterval":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting alarm for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v4

    .line 63
    .local v4, "calendar":Landroid/icu/util/Calendar;
    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    mul-int/lit16 v8, v5, 0x3e8

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 64
    .local v6, "time":J
    const/4 v8, 0x0

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v0, v8, v6, v7, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 65
    .end local v4    # "calendar":Landroid/icu/util/Calendar;
    .end local v5    # "requestedInterval":I
    .end local v6    # "time":J
    goto :goto_0

    .line 66
    :cond_0
    if-eqz v0, :cond_1

    .line 67
    const-string v5, "Cancelling alarm"

    invoke-static {v4, v5}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 71
    :cond_1
    :goto_0
    return-void
.end method

.method public static setBackgroundCheck(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Z

    .line 48
    invoke-static {p0, p1}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->scheduleNotification(Landroid/content/Context;Z)V

    .line 49
    return-void
.end method

.method public static setUpdateAvailability()V
    .locals 5

    .line 74
    const-string v0, "ro.tukirom.build"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mesalabs/cerberus/utils/PropUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 75
    .local v0, "currentVer":I
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getBuildNumber()I

    move-result v2

    .line 77
    .local v2, "manifestVer":I
    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    .line 79
    .local v1, "available":Z
    :cond_0
    invoke-static {v1}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->setUpdateAvailability(Z)V

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update Availability is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GeneralUtils"

    invoke-static {v4, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static setupDownloadCompletedNotification(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "md5pass"    # Z

    .line 84
    const-string v0, "GeneralUtils"

    const-string v1, "Showing download completed notification"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 88
    .local v0, "mNotifyManager":Landroid/app/NotificationManager;
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getMainNotiChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    .local v1, "mBuilder":Landroidx/core/app/NotificationCompat$Builder;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v2, "resultIntent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 93
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    if-eqz p1, :cond_0

    const v4, 0x7f0f008a

    goto :goto_0

    :cond_0
    const v4, 0x7f0f008c

    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 94
    if-eqz p1, :cond_1

    const v5, 0x7f0f008b

    goto :goto_1

    :cond_1
    const v5, 0x7f0f008d

    :goto_1
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 95
    if-eqz p1, :cond_2

    const v5, 0x7f0800a1

    goto :goto_2

    :cond_2
    const v5, 0x7f0800a5

    :goto_2
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f060089

    .line 96
    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 97
    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 98
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v6, 0x2

    .line 99
    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 100
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 101
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceNotificationSound()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 103
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceNotificationVibrate()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    .line 106
    :cond_3
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 109
    :goto_3
    const/16 v4, 0x65

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 110
    return-void
.end method

.method public static setupDownloadInstallNotification(Landroid/content/Context;Z)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installed"    # Z

    .line 144
    const-string v0, "GeneralUtils"

    const-string v1, "Showing install completed notification"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 148
    .local v0, "mNotifyManager":Landroid/app/NotificationManager;
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getMainNotiChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    .local v1, "mBuilder":Landroidx/core/app/NotificationCompat$Builder;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v2, "resultIntent":Landroid/content/Intent;
    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v3

    .line 151
    .local v3, "stackBuilder":Landroidx/core/app/TaskStackBuilder;
    const-class v4, Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-virtual {v3, v4}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroidx/core/app/TaskStackBuilder;

    .line 152
    invoke-virtual {v3, v2}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    .line 153
    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-virtual {v3, v4, v5}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v5

    .line 155
    .local v5, "resultPendingIntent":Landroid/app/PendingIntent;
    if-eqz p1, :cond_0

    const v6, 0x7f0f0097

    goto :goto_0

    :cond_0
    const v6, 0x7f0f0095

    :goto_0
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 156
    const/4 v7, 0x1

    if-eqz p1, :cond_1

    const v8, 0x7f0f0098

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getVersionName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const v4, 0x7f0f0096

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 157
    if-eqz p1, :cond_2

    const v6, 0x7f0800a3

    goto :goto_2

    :cond_2
    const v6, 0x7f0800a5

    :goto_2
    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    const v6, 0x7f060089

    .line 158
    invoke-virtual {p0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 159
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 160
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v6, 0x2

    .line 161
    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 162
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 163
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceNotificationSound()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 165
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceNotificationVibrate()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    .line 168
    :cond_3
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 171
    :goto_3
    const/16 v4, 0x65

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 172
    return-void
.end method

.method public static setupUpdateAvailableNotification(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 113
    const-string v0, "GeneralUtils"

    const-string v1, "Showing update available notification"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 117
    .local v0, "mNotifyManager":Landroid/app/NotificationManager;
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getMainNotiChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    .local v1, "mBuilder":Landroidx/core/app/NotificationCompat$Builder;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v2, "resultIntent":Landroid/content/Intent;
    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v3

    .line 120
    .local v3, "stackBuilder":Landroidx/core/app/TaskStackBuilder;
    const-class v4, Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-virtual {v3, v4}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroidx/core/app/TaskStackBuilder;

    .line 121
    invoke-virtual {v3, v2}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    .line 122
    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-virtual {v3, v4, v5}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v4

    .line 124
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    const v5, 0x7f0f0093

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 125
    const v6, 0x7f0f0094

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 126
    const v6, 0x7f0800a6

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 127
    const v6, 0x7f060089

    invoke-virtual {p0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 128
    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 129
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 130
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 131
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 132
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceNotificationSound()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 134
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceNotificationVibrate()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 137
    :cond_0
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 140
    :goto_0
    const/16 v5, 0x65

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 141
    return-void
.end method
