.class public Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;
.super Ljava/lang/Object;
.source "PreferencesUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Download"
.end annotation


# static fields
.field private static AVAILABILITY:Ljava/lang/String; = null

.field private static DOWNLOAD_ID:Ljava/lang/String; = null

.field private static final DOWNLOAD_RUNNING:Ljava/lang/String; = "download_running"

.field private static IS_DOWNLOAD_FINISHED:Ljava/lang/String; = null

.field private static final PREF_NAME:Ljava/lang/String; = "OnUpdate_DownloadData"

.field private static sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    const-string v0, "update_availability"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->AVAILABILITY:Ljava/lang/String;

    .line 110
    const-string v0, "download_id"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->DOWNLOAD_ID:Ljava/lang/String;

    .line 111
    const-string v0, "is_download_finished"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->IS_DOWNLOAD_FINISHED:Ljava/lang/String;

    .line 113
    const-string v0, "OnUpdate_DownloadData"

    invoke-static {v0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getInstance(Ljava/lang/String;)Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    move-result-object v0

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clean()V
    .locals 3

    .line 117
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->AVAILABILITY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Z)V

    .line 118
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    const-string v1, "download_running"

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Z)V

    .line 119
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->DOWNLOAD_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;I)V

    .line 120
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->IS_DOWNLOAD_FINISHED:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Z)V

    .line 121
    return-void
.end method

.method public static getDownloadFinished()Z
    .locals 3

    .line 125
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->IS_DOWNLOAD_FINISHED:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getDownloadID()I
    .locals 3

    .line 133
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->DOWNLOAD_ID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getIsDownloadOnGoing()Z
    .locals 3

    .line 141
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    const-string v1, "download_running"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUpdateAvailability()Z
    .locals 3

    .line 149
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->AVAILABILITY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setDownloadFinished(Z)V
    .locals 2
    .param p0, "value"    # Z

    .line 129
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->IS_DOWNLOAD_FINISHED:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Z)V

    .line 130
    return-void
.end method

.method public static setDownloadID(I)V
    .locals 2
    .param p0, "value"    # I

    .line 137
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->DOWNLOAD_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;I)V

    .line 138
    return-void
.end method

.method public static setIsDownloadOnGoing(Z)V
    .locals 2
    .param p0, "value"    # Z

    .line 145
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    const-string v1, "download_running"

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Z)V

    .line 146
    return-void
.end method

.method public static setUpdateAvailability(Z)V
    .locals 2
    .param p0, "value"    # Z

    .line 153
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->AVAILABILITY:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Z)V

    .line 154
    return-void
.end method
