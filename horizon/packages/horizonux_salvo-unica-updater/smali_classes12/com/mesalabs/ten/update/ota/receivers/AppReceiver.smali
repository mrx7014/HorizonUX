.class public Lcom/mesalabs/ten/update/ota/receivers/AppReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppReceiver.java"


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    const-string v0, "AppReceiver"

    iput-object v0, p0, Lcom/mesalabs/ten/update/ota/receivers/AppReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.mesalabs.ten.ota.MANIFEST_CHECK_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "AppReceiver"

    if-eqz v1, :cond_0

    .line 35
    const-string v1, "Receiving background check confirmation"

    invoke-static {v3, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->getUpdateAvailability()Z

    move-result v1

    .line 39
    .local v1, "updateAvailable":Z
    invoke-static {p1}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->dismissNotifications(Landroid/content/Context;)V

    .line 40
    if-eqz v1, :cond_0

    .line 41
    invoke-static {p1}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->setupUpdateAvailableNotification(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceEnabled()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-static {p1, v4}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->scheduleNotification(Landroid/content/Context;Z)V

    .line 46
    .end local v1    # "updateAvailable":Z
    :cond_0
    const-string v1, "com.mesalabs.ten.ota.START_UPDATE_CHECK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 47
    const-string v1, "Update check started"

    invoke-static {v3, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcom/mesalabs/ten/update/ota/ROMUpdate;

    const/4 v5, 0x0

    invoke-direct {v1, p1, v5}, Lcom/mesalabs/ten/update/ota/ROMUpdate;-><init>(Landroid/content/Context;Lcom/mesalabs/ten/update/ota/ROMUpdate$StubListener;)V

    .line 49
    .local v1, "update":Lcom/mesalabs/ten/update/ota/ROMUpdate;
    invoke-virtual {v1, v4}, Lcom/mesalabs/ten/update/ota/ROMUpdate;->checkUpdates(Z)V

    .line 52
    .end local v1    # "update":Lcom/mesalabs/ten/update/ota/ROMUpdate;
    :cond_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    :cond_2
    const-string v1, "Boot received"

    invoke-static {v3, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getRebootForInstall()Z

    move-result v1

    .line 55
    .local v1, "rebootForInstall":Z
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceEnabled()Z

    move-result v5

    .line 56
    .local v5, "backgroundCheck":Z
    if-eqz v1, :cond_3

    .line 57
    const-string v6, "Starting update install check"

    invoke-static {v3, v6}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v6, Ljava/io/File;

    invoke-static {p1}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getFullFilePathName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v6, "updateFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    xor-int/2addr v7, v2

    invoke-static {p1, v7}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->setupDownloadInstallNotification(Landroid/content/Context;Z)V

    .line 60
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 61
    invoke-static {v4}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->setRebootForInstall(Z)V

    .line 62
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->clean()V

    .line 64
    .end local v6    # "updateFile":Ljava/io/File;
    :cond_3
    if-eqz v5, :cond_4

    .line 65
    const-string v4, "Starting background check alarm"

    invoke-static {v3, v4}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p1, v2}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->scheduleNotification(Landroid/content/Context;Z)V

    .line 69
    .end local v1    # "rebootForInstall":Z
    .end local v5    # "backgroundCheck":Z
    :cond_4
    return-void
.end method
