.class Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment$1;
.super Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;
.source "DownloadProgressFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;


# direct methods
.method constructor <init>(Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    .line 92
    iput-object p1, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment$1;->this$0:Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment$1;->this$0:Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment$1;->this$0:Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    invoke-static {v2}, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->access$000(Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method
