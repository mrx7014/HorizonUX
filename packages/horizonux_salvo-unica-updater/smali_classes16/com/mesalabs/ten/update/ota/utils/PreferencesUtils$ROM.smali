.class public Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;
.super Ljava/lang/Object;
.source "PreferencesUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ROM"
.end annotation


# static fields
.field private static ANDROID:Ljava/lang/String; = null

.field private static BUILD_NUMBER:Ljava/lang/String; = null

.field private static CHANGELOG:Ljava/lang/String; = null

.field private static CHANGELOG_HEADER:Ljava/lang/String; = null

.field private static DEF_VALUE:Ljava/lang/String; = null

.field private static DOWNLOAD_URL:Ljava/lang/String; = null

.field private static FILESIZE:Ljava/lang/String; = null

.field private static MD5:Ljava/lang/String; = null

.field private static NAME:Ljava/lang/String; = null

.field private static ONEUI:Ljava/lang/String; = null

.field private static final PREF_NAME:Ljava/lang/String; = "OnUpdate_UpdateData"

.field private static VERSION_NAME:Ljava/lang/String;

.field private static WEBSITE:Ljava/lang/String;

.field private static sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    const-string v0, "null"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    .line 162
    const-string v0, "rom_name"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->NAME:Ljava/lang/String;

    .line 163
    const-string v0, "rom_version_name"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->VERSION_NAME:Ljava/lang/String;

    .line 164
    const-string v0, "rom_build_number"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->BUILD_NUMBER:Ljava/lang/String;

    .line 165
    const-string v0, "rom_download_url"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DOWNLOAD_URL:Ljava/lang/String;

    .line 166
    const-string v0, "rom_md5"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->MD5:Ljava/lang/String;

    .line 167
    const-string v0, "rom_changelog_header_img"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->CHANGELOG_HEADER:Ljava/lang/String;

    .line 168
    const-string v0, "rom_changelog"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->CHANGELOG:Ljava/lang/String;

    .line 169
    const-string v0, "rom_android_ver"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->ANDROID:Ljava/lang/String;

    .line 170
    const-string v0, "rom_oneui_ver"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->ONEUI:Ljava/lang/String;

    .line 171
    const-string v0, "rom_website"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->WEBSITE:Ljava/lang/String;

    .line 172
    const-string v0, "rom_filesize"

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->FILESIZE:Ljava/lang/String;

    .line 174
    const-string v0, "OnUpdate_UpdateData"

    invoke-static {v0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getInstance(Ljava/lang/String;)Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    move-result-object v0

    sput-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clean()V
    .locals 4

    .line 178
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->NAME:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->VERSION_NAME:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->BUILD_NUMBER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;I)V

    .line 181
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DOWNLOAD_URL:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->MD5:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->CHANGELOG:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->CHANGELOG_HEADER:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->ANDROID:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->ONEUI:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->WEBSITE:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->FILESIZE:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;J)V

    .line 189
    return-void
.end method

.method public static getAndroidVersion()Ljava/lang/String;
    .locals 3

    .line 221
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->ANDROID:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBuildNumber()I
    .locals 3

    .line 201
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->BUILD_NUMBER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getChangelogHeaderImgUrl()Ljava/lang/String;
    .locals 3

    .line 213
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->CHANGELOG_HEADER:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChangelogUrl()Ljava/lang/String;
    .locals 3

    .line 217
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->CHANGELOG:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadUrl()Ljava/lang/String;
    .locals 3

    .line 205
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DOWNLOAD_URL:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileSize()J
    .locals 4

    .line 233
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->FILESIZE:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFilename()Ljava/lang/String;
    .locals 3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getRomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_OTA_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getBuildNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "result":Ljava/lang/String;
    const-string v1, " "

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFullFilePathName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    return-object v0
.end method

.method public static getMd5()Ljava/lang/String;
    .locals 3

    .line 209
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->MD5:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOneUIVersion()Ljava/lang/String;
    .locals 3

    .line 225
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->ONEUI:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRomName()Ljava/lang/String;
    .locals 3

    .line 193
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->NAME:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 3

    .line 197
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->VERSION_NAME:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWebsite()Ljava/lang/String;
    .locals 3

    .line 229
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->WEBSITE:Ljava/lang/String;

    sget-object v2, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DEF_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAndroidVersion(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 265
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->ANDROID:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public static setBuildNumber(I)V
    .locals 2
    .param p0, "value"    # I

    .line 245
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->BUILD_NUMBER:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;I)V

    .line 246
    return-void
.end method

.method public static setChangelogHeaderImgUrl(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 257
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->CHANGELOG_HEADER:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public static setChangelogUrl(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 261
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->CHANGELOG:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public static setDownloadUrl(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 249
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->DOWNLOAD_URL:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public static setFileSize(J)V
    .locals 2
    .param p0, "value"    # J

    .line 277
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->FILESIZE:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p1}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;J)V

    .line 278
    return-void
.end method

.method public static setMd5(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 253
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->MD5:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public static setOneUIVersion(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 269
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->ONEUI:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public static setRomName(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 237
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 241
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public static setWebsite(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 273
    sget-object v0, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->sp:Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->WEBSITE:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mesalabs/cerberus/utils/SharedPreferencesUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method
