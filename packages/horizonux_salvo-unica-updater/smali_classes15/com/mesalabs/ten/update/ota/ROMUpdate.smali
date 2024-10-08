.class public Lcom/mesalabs/ten/update/ota/ROMUpdate;
.super Ljava/lang/Object;
.source "ROMUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mesalabs/ten/update/ota/ROMUpdate$StubListener;,
        Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;,
        Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;,
        Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;
    }
.end annotation


# static fields
.field public static final STATE_CHECKING:I = 0x4

.field public static final STATE_DOWNLOADED:I = 0x5

.field public static final STATE_ERROR:I = 0x3

.field public static final STATE_NEW_VERSION_AVAILABLE:I = 0x2

.field public static final STATE_NO_UPDATES:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsRunningInApp:Z

.field private mNewUpdateAvailable:Z

.field private mStubListener:Lcom/mesalabs/ten/update/ota/ROMUpdate$StubListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mesalabs/ten/update/ota/ROMUpdate$StubListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stubListener"    # Lcom/mesalabs/ten/update/ota/ROMUpdate$StubListener;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate;->mIsRunningInApp:Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate;->mNewUpdateAvailable:Z

    .line 75
    iput-object p1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate;->mStubListener:Lcom/mesalabs/ten/update/ota/ROMUpdate$StubListener;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/mesalabs/ten/update/ota/ROMUpdate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/ota/ROMUpdate;

    .line 62
    iget-boolean v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate;->mIsRunningInApp:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mesalabs/ten/update/ota/ROMUpdate;)V
    .locals 0
    .param p0, "x0"    # Lcom/mesalabs/ten/update/ota/ROMUpdate;

    .line 62
    invoke-direct {p0}, Lcom/mesalabs/ten/update/ota/ROMUpdate;->postCheckUpdates()V

    return-void
.end method

.method private postCheckUpdates()V
    .locals 3

    .line 88
    const/4 v0, 0x3

    .line 90
    .local v0, "newStatus":I
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getRomName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->getUpdateAvailability()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate;->mNewUpdateAvailable:Z

    .line 92
    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .line 94
    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->dismissNotifications(Landroid/content/Context;)V

    .line 96
    iget-boolean v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate;->mIsRunningInApp:Z

    if-nez v1, :cond_2

    .line 97
    iget-boolean v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate;->mNewUpdateAvailable:Z

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->setupUpdateAvailableNotification(Landroid/content/Context;)V

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->scheduleNotification(Landroid/content/Context;Z)V

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate;->mStubListener:Lcom/mesalabs/ten/update/ota/ROMUpdate$StubListener;

    if-eqz v1, :cond_3

    .line 105
    invoke-interface {v1, v0}, Lcom/mesalabs/ten/update/ota/ROMUpdate$StubListener;->onUpdateCheckCompleted(I)V

    .line 106
    :cond_3
    return-void
.end method


# virtual methods
.method public checkUpdates(Z)V
    .locals 3
    .param p1, "inApp"    # Z

    .line 80
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->getDownloadFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->clean()V

    .line 82
    iput-boolean p1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate;->mIsRunningInApp:Z

    .line 83
    new-instance v0, Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;

    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;-><init>(Lcom/mesalabs/ten/update/ota/ROMUpdate;Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    :cond_0
    return-void
.end method
