.class public Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;
.super Ljava/lang/Object;
.source "ROMUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mesalabs/ten/update/ota/ROMUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Download"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ROMUpdate.Download"


# instance fields
.field private mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

.field private mFetch:Lcom/tonyodev/fetch2/Fetch;


# direct methods
.method public constructor <init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 194
    return-void
.end method

.method static synthetic access$200(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    .line 186
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->mFetch:Lcom/tonyodev/fetch2/Fetch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/mesalabs/ten/update/activity/home/MainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    .line 186
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    return-object v0
.end method

.method static synthetic lambda$startDownload$1(Lcom/tonyodev/fetch2/Error;)V
    .locals 2
    .param p0, "error"    # Lcom/tonyodev/fetch2/Error;

    .line 302
    new-instance v0, Lcom/mesalabs/cerberus/utils/CerberusException;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mesalabs/cerberus/utils/CerberusException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancelDownload()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getFullFilePathName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "file":Ljava/lang/String;
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->getDownloadID()I

    move-result v1

    .line 314
    .local v1, "mDownloadID":I
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->deleteFile(Ljava/io/File;)V

    .line 315
    iget-object v2, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->mFetch:Lcom/tonyodev/fetch2/Fetch;

    invoke-interface {v2, v1}, Lcom/tonyodev/fetch2/Fetch;->remove(I)Lcom/tonyodev/fetch2/Fetch;

    .line 316
    iget-object v2, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->mFetch:Lcom/tonyodev/fetch2/Fetch;

    invoke-interface {v2}, Lcom/tonyodev/fetch2/Fetch;->close()V

    .line 317
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->clean()V

    .line 318
    return-void
.end method

.method public synthetic lambda$startDownload$0$ROMUpdate$Download(Lcom/tonyodev/fetch2/Request;)V
    .locals 2
    .param p1, "updatedRequest"    # Lcom/tonyodev/fetch2/Request;

    .line 222
    new-instance v0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;

    invoke-direct {v0, p0}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;-><init>(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)V

    .line 300
    .local v0, "fetchListener":Lcom/tonyodev/fetch2/FetchListener;
    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->mFetch:Lcom/tonyodev/fetch2/Fetch;

    invoke-interface {v1, v0}, Lcom/tonyodev/fetch2/Fetch;->addListener(Lcom/tonyodev/fetch2/FetchListener;)Lcom/tonyodev/fetch2/Fetch;

    .line 301
    return-void
.end method

.method public pauseDownload()V
    .locals 2

    .line 321
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->getDownloadID()I

    move-result v0

    .line 322
    .local v0, "mDownloadID":I
    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->mFetch:Lcom/tonyodev/fetch2/Fetch;

    invoke-interface {v1, v0}, Lcom/tonyodev/fetch2/Fetch;->pause(I)Lcom/tonyodev/fetch2/Fetch;

    .line 323
    return-void
.end method

.method public resumeDownload()V
    .locals 2

    .line 326
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->getDownloadID()I

    move-result v0

    .line 327
    .local v0, "mDownloadID":I
    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->mFetch:Lcom/tonyodev/fetch2/Fetch;

    invoke-interface {v1, v0}, Lcom/tonyodev/fetch2/Fetch;->resume(I)Lcom/tonyodev/fetch2/Fetch;

    .line 328
    return-void
.end method

.method public startDownload()V
    .locals 7

    .line 197
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v1}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getFullFilePathName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "file":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->setIsDownloadOnGoing(Z)V

    .line 202
    new-instance v3, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    iget-object v4, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-direct {v3, v4}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-static {}, Lcom/mesalabs/ten/update/TenUpdateApp;->isDebugBuild()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->enableLogging(Z)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    move-result-object v3

    .line 204
    invoke-virtual {v3, v2}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->setDownloadConcurrentLimit(I)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    move-result-object v3

    new-instance v4, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;

    sget-object v5, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->SEQUENTIAL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    invoke-direct {v4, v5}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;-><init>(Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V

    .line 205
    invoke-virtual {v3, v4}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->setHttpDownloader(Lcom/tonyodev/fetch2core/Downloader;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    move-result-object v3

    new-instance v4, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$1;

    iget-object v5, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-direct {v4, p0, v5}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$1;-><init>(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;Landroid/content/Context;)V

    .line 206
    invoke-virtual {v3, v4}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->setNotificationManager(Lcom/tonyodev/fetch2/FetchNotificationManager;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    move-result-object v3

    .line 213
    invoke-virtual {v3}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->build()Lcom/tonyodev/fetch2/FetchConfiguration;

    move-result-object v3

    .line 214
    .local v3, "fetchConfiguration":Lcom/tonyodev/fetch2/FetchConfiguration;
    sget-object v4, Lcom/tonyodev/fetch2/Fetch;->Impl:Lcom/tonyodev/fetch2/Fetch$Impl;

    invoke-virtual {v4, v3}, Lcom/tonyodev/fetch2/Fetch$Impl;->getInstance(Lcom/tonyodev/fetch2/FetchConfiguration;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object v4

    iput-object v4, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->mFetch:Lcom/tonyodev/fetch2/Fetch;

    .line 216
    new-instance v4, Lcom/tonyodev/fetch2/Request;

    invoke-direct {v4, v0, v1}, Lcom/tonyodev/fetch2/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .local v4, "request":Lcom/tonyodev/fetch2/Request;
    invoke-virtual {v4, v2}, Lcom/tonyodev/fetch2/Request;->setDownloadOnEnqueue(Z)V

    .line 218
    sget-object v2, Lcom/tonyodev/fetch2/Priority;->HIGH:Lcom/tonyodev/fetch2/Priority;

    invoke-virtual {v4, v2}, Lcom/tonyodev/fetch2/Request;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 219
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getNetworkType()I

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/tonyodev/fetch2/NetworkType;->ALL:Lcom/tonyodev/fetch2/NetworkType;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/tonyodev/fetch2/NetworkType;->WIFI_ONLY:Lcom/tonyodev/fetch2/NetworkType;

    :goto_0
    invoke-virtual {v4, v2}, Lcom/tonyodev/fetch2/Request;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    .line 221
    iget-object v2, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->mFetch:Lcom/tonyodev/fetch2/Fetch;

    new-instance v5, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$$ExternalSyntheticLambda0;-><init>(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)V

    sget-object v6, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$$ExternalSyntheticLambda1;->INSTANCE:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$$ExternalSyntheticLambda1;

    invoke-interface {v2, v4, v5, v6}, Lcom/tonyodev/fetch2/Fetch;->enqueue(Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    .line 305
    invoke-virtual {v4}, Lcom/tonyodev/fetch2/Request;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->setDownloadID(I)V

    .line 307
    iget-object v2, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-virtual {v2}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->onPostROMUpdateDownload()V

    .line 308
    iget-object v2, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->animateBottomDownloadButton(ZZ)V

    .line 309
    return-void
.end method
