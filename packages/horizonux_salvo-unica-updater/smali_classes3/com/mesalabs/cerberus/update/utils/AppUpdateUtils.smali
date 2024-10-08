.class public Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;
.super Ljava/lang/Object;
.source "AppUpdateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$StubListener;,
        Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$LoadAppManifest;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_DIR:Ljava/lang/String; = "updates"

.field private static final PROP_ROM_BUILD:Ljava/lang/String; = "ro.on.core.build"

.field public static final STATE_CHECKING:I = 0x4

.field public static final STATE_ERROR:I = 0x3

.field public static final STATE_NEW_VERSION_AVAILABLE:I = 0x2

.field public static final STATE_NO_UPDATES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppUpdateUtils"

.field private static final UPDATE_XML:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppData:Lcom/mesalabs/cerberus/update/data/AppData;

.field private mAppPackageName:Ljava/lang/String;

.field private mNewUpdateAvailable:Z

.field private mStubListener:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$StubListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://gitlab.com/BlackMesa123/on-otamanifest/raw/master/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.on.core.build"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/mesalabs/cerberus/utils/PropUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apps-manifest.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->UPDATE_XML:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$StubListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appPackageName"    # Ljava/lang/String;
    .param p3, "stubListener"    # Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$StubListener;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->mNewUpdateAvailable:Z

    .line 57
    iput-object p1, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->mActivity:Landroid/app/Activity;

    .line 58
    iput-object p2, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->mAppPackageName:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->mStubListener:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$StubListener;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 39
    invoke-direct {p0, p1}, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->postCheckUpdates(Ljava/util/ArrayList;)V

    return-void
.end method

.method private postCheckUpdates(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mesalabs/cerberus/update/data/AppData;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p1, "appsDataArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mesalabs/cerberus/update/data/AppData;>;"
    const/4 v0, 0x3

    .line 88
    .local v0, "newStatus":I
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 89
    invoke-static {}, Lcom/mesalabs/ten/update/TenUpdateApp;->getAppVersionCode()I

    move-result v1

    .line 90
    .local v1, "currentVer":I
    const/4 v2, 0x0

    .line 92
    .local v2, "onlineVer":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 93
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mesalabs/cerberus/update/data/AppData;

    invoke-virtual {v4}, Lcom/mesalabs/cerberus/update/data/AppData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mesalabs/cerberus/update/data/AppData;

    iput-object v4, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->mAppData:Lcom/mesalabs/cerberus/update/data/AppData;

    .line 95
    invoke-virtual {v4}, Lcom/mesalabs/cerberus/update/data/AppData;->getVersionNumber()I

    move-result v2

    .line 96
    goto :goto_1

    .line 92
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v3    # "i":I
    :cond_1
    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->mNewUpdateAvailable:Z

    .line 101
    if-eqz v4, :cond_3

    const/4 v3, 0x2

    :cond_3
    move v0, v3

    .line 104
    .end local v1    # "currentVer":I
    .end local v2    # "onlineVer":I
    :cond_4
    iget-object v1, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->mStubListener:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$StubListener;

    invoke-interface {v1, v0}, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$StubListener;->onUpdateCheckCompleted(I)V

    .line 105
    return-void
.end method


# virtual methods
.method public checkUpdates()V
    .locals 5

    .line 63
    new-instance v0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$LoadAppManifest;

    iget-object v1, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$LoadAppManifest;-><init>(Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->UPDATE_XML:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$LoadAppManifest;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    return-void
.end method

.method public installUpdate()V
    .locals 8

    .line 67
    iget-boolean v0, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->mNewUpdateAvailable:Z

    const-string v1, "AppUpdateUtils"

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->mAppData:Lcom/mesalabs/cerberus/update/data/AppData;

    invoke-virtual {v2}, Lcom/mesalabs/cerberus/update/data/AppData;->getVersionNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "fileName":Ljava/lang/String;
    new-instance v2, Landroid/app/DownloadManager$Request;

    iget-object v3, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->mAppData:Lcom/mesalabs/cerberus/update/data/AppData;

    invoke-virtual {v3}, Lcom/mesalabs/cerberus/update/data/AppData;->getDownloadLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 71
    .local v2, "request":Landroid/app/DownloadManager$Request;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v3, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->mActivity:Landroid/app/Activity;

    const-string v4, "updates"

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 75
    iget-object v3, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->mActivity:Landroid/app/Activity;

    const-string v4, "download"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    .line 76
    .local v3, "downloadManager":Landroid/app/DownloadManager;
    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v4

    .line 77
    .local v4, "mDownloadID":J
    new-instance v6, Lcom/mesalabs/cerberus/update/download/AppDownload;

    iget-object v7, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7, v3, v4, v5}, Lcom/mesalabs/cerberus/update/download/AppDownload;-><init>(Landroid/content/Context;Landroid/app/DownloadManager;J)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/mesalabs/cerberus/update/download/AppDownload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting download with manager ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v2    # "request":Landroid/app/DownloadManager$Request;
    .end local v3    # "downloadManager":Landroid/app/DownloadManager;
    .end local v4    # "mDownloadID":J
    goto :goto_0

    .line 81
    :cond_0
    const-string v0, "installUpdate: mNewUpdateAvailable is false!!!"

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void
.end method
