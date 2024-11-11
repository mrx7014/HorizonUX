.class Lcom/mesalabs/cerberus/update/download/AppDownload$2;
.super Ljava/lang/Object;
.source "AppDownload.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/cerberus/update/download/AppDownload;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/cerberus/update/download/AppDownload;


# direct methods
.method constructor <init>(Lcom/mesalabs/cerberus/update/download/AppDownload;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mesalabs/cerberus/update/download/AppDownload;

    .line 68
    iput-object p1, p0, Lcom/mesalabs/cerberus/update/download/AppDownload$2;->this$0:Lcom/mesalabs/cerberus/update/download/AppDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 71
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/download/AppDownload$2;->this$0:Lcom/mesalabs/cerberus/update/download/AppDownload;

    invoke-static {v0}, Lcom/mesalabs/cerberus/update/download/AppDownload;->access$000(Lcom/mesalabs/cerberus/update/download/AppDownload;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 72
    .local v0, "downloadManager":Landroid/app/DownloadManager;
    const/4 v1, 0x1

    new-array v1, v1, [J

    iget-object v2, p0, Lcom/mesalabs/cerberus/update/download/AppDownload$2;->this$0:Lcom/mesalabs/cerberus/update/download/AppDownload;

    invoke-static {v2}, Lcom/mesalabs/cerberus/update/download/AppDownload;->access$100(Lcom/mesalabs/cerberus/update/download/AppDownload;)J

    move-result-wide v2

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 73
    return-void
.end method
