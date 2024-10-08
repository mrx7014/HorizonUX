.class public Lcom/mesalabs/ten/update/TenUpdateApp;
.super Landroid/app/Application;
.source "TenUpdateApp.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static mAppContext:Landroid/content/Context;

.field private static mAppInstance:Lcom/mesalabs/ten/update/TenUpdateApp;

.field private static mIsInBackground:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static createMainNotificationChannel()V
    .locals 9

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 88
    sget-object v0, Lcom/mesalabs/ten/update/TenUpdateApp;->mAppContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 90
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v5

    double-to-int v1, v1

    .line 91
    .local v1, "randomId":I
    :goto_0
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getMainNotiChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double/2addr v7, v3

    add-double/2addr v7, v5

    double-to-int v1, v7

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getMainNotiChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mesa_tenupdate_notichannel_main_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->setMainNotiChannelName(Ljava/lang/String;)V

    .line 98
    new-instance v2, Landroid/app/NotificationChannel;

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getMainNotiChannelName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/mesalabs/ten/update/TenUpdateApp;->mAppContext:Landroid/content/Context;

    const v5, 0x7f0f00ad

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 99
    .local v2, "notiMainChannel":Landroid/app/NotificationChannel;
    sget-object v3, Lcom/mesalabs/ten/update/TenUpdateApp;->mAppContext:Landroid/content/Context;

    const v4, 0x7f060089

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 100
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 101
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceNotificationSound()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 102
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const/4 v5, 0x5

    .line 103
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 104
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 101
    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 105
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceNotificationVibrate()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 107
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 109
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    .end local v1    # "randomId":I
    .end local v2    # "notiMainChannel":Landroid/app/NotificationChannel;
    :cond_1
    return-void
.end method

.method private createMinorNotificationChannel()V
    .locals 5

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 113
    sget-object v0, Lcom/mesalabs/ten/update/TenUpdateApp;->mAppContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 115
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/NotificationChannel;

    sget-object v2, Lcom/mesalabs/ten/update/TenUpdateApp;->mAppContext:Landroid/content/Context;

    const v3, 0x7f0f00ac

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "mesa_tenupdate_notichannel_dwnl"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 116
    .local v1, "notiDwnlChannel":Landroid/app/NotificationChannel;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 120
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    .end local v1    # "notiDwnlChannel":Landroid/app/NotificationChannel;
    :cond_0
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 38
    sget-object v0, Lcom/mesalabs/ten/update/TenUpdateApp;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getAppInstance()Lcom/mesalabs/ten/update/TenUpdateApp;
    .locals 1

    .line 42
    sget-object v0, Lcom/mesalabs/ten/update/TenUpdateApp;->mAppInstance:Lcom/mesalabs/ten/update/TenUpdateApp;

    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 2

    .line 46
    sget-object v0, Lcom/mesalabs/ten/update/TenUpdateApp;->mAppInstance:Lcom/mesalabs/ten/update/TenUpdateApp;

    const v1, 0x7f0f00aa

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/TenUpdateApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "com.mesalabs.ten.update"

    return-object v0
.end method

.method public static getAppVersionCode()I
    .locals 1

    .line 58
    const/16 v0, 0x283c

    return v0
.end method

.method public static getAppVersionString()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "1.3.0"

    return-object v0
.end method

.method public static isAppInBackground()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/mesalabs/ten/update/TenUpdateApp;->mIsInBackground:Z

    return v0
.end method

.method public static isDebugBuild()Z
    .locals 1

    .line 68
    sget-boolean v0, Lcom/mesalabs/ten/update/BuildConfig;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 74
    sput-object p0, Lcom/mesalabs/ten/update/TenUpdateApp;->mAppInstance:Lcom/mesalabs/ten/update/TenUpdateApp;

    .line 75
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/TenUpdateApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mesalabs/ten/update/TenUpdateApp;->mAppContext:Landroid/content/Context;

    .line 77
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 78
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getMainNotiChannelName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/mesalabs/ten/update/TenUpdateApp;->createMainNotificationChannel()V

    .line 80
    invoke-direct {p0}, Lcom/mesalabs/ten/update/TenUpdateApp;->createMinorNotificationChannel()V

    .line 83
    :cond_0
    return-void
.end method

.method public onMoveToBackground()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 129
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mesalabs/ten/update/TenUpdateApp;->mIsInBackground:Z

    .line 130
    return-void
.end method

.method public onMoveToForeground()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mesalabs/ten/update/TenUpdateApp;->mIsInBackground:Z

    .line 125
    return-void
.end method
