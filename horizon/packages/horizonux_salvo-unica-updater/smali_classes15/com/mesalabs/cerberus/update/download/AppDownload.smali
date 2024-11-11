.class public Lcom/mesalabs/cerberus/update/download/AppDownload;
.super Landroid/os/AsyncTask;
.source "AppDownload.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownloadID:J

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mIsRunning:Z

.field private mLoadingDialog:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DownloadManager;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadManager"    # Landroid/app/DownloadManager;
    .param p3, "downloadID"    # J

    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    const-string v0, "AppDownload"

    iput-object v0, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mIsRunning:Z

    .line 48
    iput-object p1, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mDownloadManager:Landroid/app/DownloadManager;

    .line 50
    iput-wide p3, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mDownloadID:J

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/mesalabs/cerberus/update/download/AppDownload;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/cerberus/update/download/AppDownload;

    .line 38
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mesalabs/cerberus/update/download/AppDownload;)J
    .locals 2
    .param p0, "x0"    # Lcom/mesalabs/cerberus/update/download/AppDownload;

    .line 38
    iget-wide v0, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mDownloadID:J

    return-wide v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mesalabs/cerberus/update/download/AppDownload;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .line 85
    const-string v0, ""

    .line 86
    .local v0, "downloadFileUrl":Ljava/lang/String;
    const/4 v1, 0x0

    .line 88
    .local v1, "previousValue":I
    :goto_0
    iget-boolean v2, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mIsRunning:Z

    if-eqz v2, :cond_4

    .line 89
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 90
    .local v2, "q":Landroid/app/DownloadManager$Query;
    const/4 v3, 0x1

    new-array v4, v3, [J

    iget-wide v5, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mDownloadID:J

    const/4 v7, 0x0

    aput-wide v5, v4, v7

    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 92
    iget-object v4, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v4, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v4

    .line 93
    .local v4, "cursor":Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 96
    :try_start_0
    const-string v5, "status"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 98
    .local v5, "status":I
    const/16 v6, 0x8

    const/4 v8, 0x2

    if-ne v5, v6, :cond_0

    .line 99
    const-string v6, "local_uri"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 100
    iput-boolean v7, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mIsRunning:Z

    goto :goto_1

    .line 101
    :cond_0
    const/16 v6, 0x10

    if-ne v5, v6, :cond_1

    .line 102
    iput-boolean v7, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mIsRunning:Z

    goto :goto_1

    .line 103
    :cond_1
    if-eq v5, v8, :cond_2

    .line 104
    iput-boolean v7, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mIsRunning:Z

    .line 107
    :cond_2
    :goto_1
    const-string v6, "bytes_so_far"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 108
    .local v6, "bytesDownloaded":I
    const-string v9, "total_size"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 110
    .local v9, "bytesInTotal":I
    int-to-long v10, v6

    const-wide/16 v12, 0x64

    mul-long/2addr v10, v12

    int-to-long v12, v9

    div-long/2addr v10, v12

    long-to-int v10, v10

    .line 112
    .local v10, "progressPercent":I
    if-eq v10, v1, :cond_3

    .line 114
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v8

    invoke-virtual {p0, v11}, Lcom/mesalabs/cerberus/update/download/AppDownload;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    move v1, v10

    .line 120
    .end local v5    # "status":I
    .end local v6    # "bytesDownloaded":I
    .end local v9    # "bytesInTotal":I
    .end local v10    # "progressPercent":I
    :cond_3
    goto :goto_3

    .line 117
    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    .line 118
    .local v3, "e":Ljava/lang/RuntimeException;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppDownload"

    invoke-static {v6, v5}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iput-boolean v7, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mIsRunning:Z

    .line 121
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 122
    .end local v2    # "q":Landroid/app/DownloadManager$Query;
    .end local v4    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 124
    :cond_4
    iget-object v2, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mLoadingDialog:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    invoke-virtual {v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->dismiss()V

    .line 125
    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mIsRunning:Z

    .line 81
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mesalabs/cerberus/update/download/AppDownload;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .local v0, "file":Ljava/io/File;
    nop

    .line 153
    iget-object v2, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mesalabs/ten/update/TenUpdateApp;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mesalabs/cerberus/update/content/GenericFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 155
    .local v2, "data":Landroid/net/Uri;
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v3, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void

    .line 149
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "data":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppDownload"

    invoke-static {v3, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void

    .line 137
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0069

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 55
    new-instance v0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    iget-object v1, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mLoadingDialog:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 57
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mLoadingDialog:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setProgressStyle(I)V

    .line 58
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mLoadingDialog:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setCancelable(Z)V

    .line 59
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mLoadingDialog:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 60
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mLoadingDialog:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    iget-object v1, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mContext:Landroid/content/Context;

    const v2, 0x7f0f00a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mLoadingDialog:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    iget-object v1, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mesalabs/cerberus/update/download/AppDownload$1;

    invoke-direct {v2, p0}, Lcom/mesalabs/cerberus/update/download/AppDownload$1;-><init>(Lcom/mesalabs/cerberus/update/download/AppDownload;)V

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mLoadingDialog:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    new-instance v1, Lcom/mesalabs/cerberus/update/download/AppDownload$2;

    invoke-direct {v1, p0}, Lcom/mesalabs/cerberus/update/download/AppDownload$2;-><init>(Lcom/mesalabs/cerberus/update/download/AppDownload;)V

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 75
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mLoadingDialog:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    invoke-virtual {v0}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->show()V

    .line 76
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progress"    # [Ljava/lang/Integer;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating Progress - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppDownload"

    invoke-static {v2, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/download/AppDownload;->mLoadingDialog:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setProgress(I)V

    .line 132
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mesalabs/cerberus/update/download/AppDownload;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
