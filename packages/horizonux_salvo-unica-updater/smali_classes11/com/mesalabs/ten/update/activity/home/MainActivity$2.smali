.class Lcom/mesalabs/ten/update/activity/home/MainActivity$2;
.super Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/ten/update/activity/home/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;


# direct methods
.method constructor <init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 137
    iput-object p1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$2;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$2;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$000(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mesalabs/cerberus/utils/StateUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$2;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$100(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0085

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$2;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->animateRefreshButton(Z)V

    .line 144
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$2;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$200(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->checkForROMUpdates()V

    .line 145
    return-void
.end method
