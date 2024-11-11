.class public abstract Lcom/mesalabs/ten/update/ota/noti/FetchOTANotificationManager;
.super Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;
.source "FetchOTANotificationManager.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private getContentTitle(Landroid/content/Context;Lcom/tonyodev/fetch2/DownloadNotification;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadNotification"    # Lcom/tonyodev/fetch2/DownloadNotification;

    .line 49
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const v0, 0x7f0f008c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const v0, 0x7f0f008e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_1
    const v0, 0x7f0f008f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEtaText(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "etaInMilliSeconds"    # J

    .line 58
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    .line 59
    .local v0, "seconds":J
    const-wide/16 v2, 0xe10

    div-long v4, v0, v2

    .line 60
    .local v4, "hours":J
    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 61
    const-wide/16 v2, 0x3c

    div-long v6, v0, v2

    .line 62
    .local v6, "minutes":J
    mul-long/2addr v2, v6

    sub-long/2addr v0, v2

    .line 64
    const-wide/16 v2, 0x0

    cmp-long v8, v4, v2

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lez v8, :cond_0

    .line 65
    const v2, 0x7f0f0090

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v9

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 66
    :cond_0
    cmp-long v8, v6, v2

    if-lez v8, :cond_1

    .line 67
    const v2, 0x7f0f0091

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v10

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 68
    :cond_1
    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 69
    const v2, 0x7f0f0092

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v11

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 71
    :cond_2
    const-string v2, ""

    return-object v2
.end method

.method private getSmallIcon(Lcom/tonyodev/fetch2/DownloadNotification;)I
    .locals 1
    .param p1, "downloadNotification"    # Lcom/tonyodev/fetch2/DownloadNotification;

    .line 75
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/DownloadNotification;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const v0, 0x7f0800a5

    return v0

    .line 78
    :cond_0
    const v0, 0x7f0800a4

    return v0
.end method


# virtual methods
.method public createNotificationChannels(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationManager"    # Landroid/app/NotificationManager;

    .line 39
    return-void
.end method

.method public getChannelId(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "channelId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 44
    const-string v0, "mesa_tenupdate_notichannel_dwnl"

    return-object v0
.end method

.method public getSubtitleText(Landroid/content/Context;Lcom/tonyodev/fetch2/DownloadNotification;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadNotification"    # Lcom/tonyodev/fetch2/DownloadNotification;

    .line 84
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->getEtaInMilliSeconds()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/mesalabs/ten/update/ota/noti/FetchOTANotificationManager;->getEtaText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public shouldCancelNotification(Lcom/tonyodev/fetch2/DownloadNotification;)Z
    .locals 1
    .param p1, "downloadNotification"    # Lcom/tonyodev/fetch2/DownloadNotification;

    .line 92
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/DownloadNotification;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public updateNotification(Landroidx/core/app/NotificationCompat$Builder;Lcom/tonyodev/fetch2/DownloadNotification;Landroid/content/Context;)V
    .locals 6
    .param p1, "notificationBuilder"    # Landroidx/core/app/NotificationCompat$Builder;
    .param p2, "downloadNotification"    # Lcom/tonyodev/fetch2/DownloadNotification;
    .param p3, "context"    # Landroid/content/Context;

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-direct {v0, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, "resultIntent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p3, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 102
    .local v2, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 103
    invoke-direct {p0, p2}, Lcom/mesalabs/ten/update/ota/noti/FetchOTANotificationManager;->getSmallIcon(Lcom/tonyodev/fetch2/DownloadNotification;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 104
    const v4, 0x7f060089

    invoke-virtual {p3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 105
    invoke-direct {p0, p3, p2}, Lcom/mesalabs/ten/update/ota/noti/FetchOTANotificationManager;->getContentTitle(Landroid/content/Context;Lcom/tonyodev/fetch2/DownloadNotification;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 106
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 107
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isOnGoingNotification()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 108
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->getGroupId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 109
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 110
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 112
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isFailed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 115
    :cond_0
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->getProgressIndeterminate()Z

    move-result v3

    .line 116
    .local v3, "progressIndeterminate":Z
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->getProgressIndeterminate()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    const/16 v4, 0x64

    .line 117
    .local v4, "maxProgress":I
    :goto_0
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->getProgress()I

    move-result v5

    if-gez v5, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->getProgress()I

    move-result v5

    .line 118
    .local v5, "progress":I
    :goto_1
    invoke-virtual {p1, v4, v5, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    .line 113
    .end local v3    # "progressIndeterminate":Z
    .end local v4    # "maxProgress":I
    .end local v5    # "progress":I
    :cond_3
    :goto_2
    invoke-virtual {p1, v1, v1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 121
    :goto_3
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isDownloading()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    const v3, 0x7f0f00a3

    .line 123
    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->PAUSE:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    .line 124
    invoke-virtual {p0, p2, v4}, Lcom/mesalabs/ten/update/ota/noti/FetchOTANotificationManager;->getActionPendingIntent(Lcom/tonyodev/fetch2/DownloadNotification;Lcom/tonyodev/fetch2/DownloadNotification$ActionType;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 122
    invoke-virtual {p1, v1, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_4

    .line 126
    :cond_4
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 127
    const v3, 0x7f0f00a6

    .line 128
    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->RESUME:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    .line 129
    invoke-virtual {p0, p2, v4}, Lcom/mesalabs/ten/update/ota/noti/FetchOTANotificationManager;->getActionPendingIntent(Lcom/tonyodev/fetch2/DownloadNotification;Lcom/tonyodev/fetch2/DownloadNotification$ActionType;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 127
    invoke-virtual {p1, v1, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 131
    :cond_5
    :goto_4
    return-void
.end method
