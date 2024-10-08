.class public Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;
.super Ljava/lang/Object;
.source "PreferencesUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;,
        Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;
    }
.end annotation


# static fields
.field public static KEY_BGSERVICE:Ljava/lang/String;

.field public static KEY_BGSERVICE_CHECK_FREQ:Ljava/lang/String;

.field public static KEY_BGSERVICE_NOTI_SOUND:Ljava/lang/String;

.field public static KEY_BGSERVICE_NOTI_VIBRATE:Ljava/lang/String;

.field public static KEY_IS_APP_UPDATE_AVAILABLE:Ljava/lang/String;

.field public static KEY_IS_ROOT_AVAILABLE:Ljava/lang/String;

.field public static KEY_MAIN_NOTI_CHANNEL_NAME:Ljava/lang/String;

.field public static KEY_NETWORK_TYPE:Ljava/lang/String;

.field public static KEY_REBOOT_FOR_INSTALL:Ljava/lang/String;

.field private static sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "mesa_bgservice_pref"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_BGSERVICE:Ljava/lang/String;

    .line 24
    const-string v0, "mesa_bgservice_freq_pref"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_BGSERVICE_CHECK_FREQ:Ljava/lang/String;

    .line 25
    const-string v0, "mesa_bgservice_noti_sound_pref"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_BGSERVICE_NOTI_SOUND:Ljava/lang/String;

    .line 26
    const-string v0, "mesa_bgservice_noti_vibrate_pref"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_BGSERVICE_NOTI_VIBRATE:Ljava/lang/String;

    .line 27
    const-string v0, "mesa_is_root_available"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_IS_ROOT_AVAILABLE:Ljava/lang/String;

    .line 28
    const-string v0, "mesa_is_app_update_available"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_IS_APP_UPDATE_AVAILABLE:Ljava/lang/String;

    .line 29
    const-string v0, "mesa_main_noti_channel_name"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_MAIN_NOTI_CHANNEL_NAME:Ljava/lang/String;

    .line 30
    const-string v0, "mesa_networktype_pref"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_NETWORK_TYPE:Ljava/lang/String;

    .line 31
    const-string v0, "mesa_reboot_for_install"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_REBOOT_FOR_INSTALL:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getInstance()Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    move-result-object v0

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBgServiceCheckFrequency()I
    .locals 3

    .line 81
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_BGSERVICE_CHECK_FREQ:Ljava/lang/String;

    const-string v2, "86400"

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getBgServiceEnabled()Z
    .locals 3

    .line 73
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_BGSERVICE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBgServiceNotificationSound()Ljava/lang/String;
    .locals 3

    .line 89
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_BGSERVICE_NOTI_SOUND:Ljava/lang/String;

    const-string v2, "content://settings/system/notification_sound"

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBgServiceNotificationVibrate()Z
    .locals 3

    .line 97
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_BGSERVICE_NOTI_VIBRATE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIsAppUpdateAvailable()Z
    .locals 3

    .line 45
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_IS_APP_UPDATE_AVAILABLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIsRootAvailable()Z
    .locals 3

    .line 37
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_IS_ROOT_AVAILABLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMainNotiChannelName()Ljava/lang/String;
    .locals 3

    .line 61
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_MAIN_NOTI_CHANNEL_NAME:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType()I
    .locals 3

    .line 69
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_NETWORK_TYPE:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getRebootForInstall()Z
    .locals 3

    .line 53
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_REBOOT_FOR_INSTALL:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setBgServiceCheckFrequency(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_BGSERVICE_CHECK_FREQ:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static setBgServiceEnabled(Z)V
    .locals 2
    .param p0, "value"    # Z

    .line 77
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_BGSERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Z)V

    .line 78
    return-void
.end method

.method public static setBgServiceNotificationSound(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_BGSERVICE_NOTI_SOUND:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static setBgServiceNotificationVibrate(Z)V
    .locals 2
    .param p0, "value"    # Z

    .line 101
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_BGSERVICE_NOTI_VIBRATE:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Z)V

    .line 102
    return-void
.end method

.method public static setIsAppUpdateAvailable(Z)V
    .locals 2
    .param p0, "value"    # Z

    .line 49
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_IS_APP_UPDATE_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Z)V

    .line 50
    return-void
.end method

.method public static setIsRootAvailable(Z)V
    .locals 2
    .param p0, "value"    # Z

    .line 41
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_IS_ROOT_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Z)V

    .line 42
    return-void
.end method

.method public static setMainNotiChannelName(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_MAIN_NOTI_CHANNEL_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static setRebootForInstall(Z)V
    .locals 2
    .param p0, "value"    # Z

    .line 57
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->KEY_REBOOT_FOR_INSTALL:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Z)V

    .line 58
    return-void
.end method
