.class Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$1;
.super Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;
.source "MainCardsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->onHiddenChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;


# direct methods
.method constructor <init>(Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    .line 102
    iput-object p1, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$1;->this$0:Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 105
    new-instance v0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;

    iget-object v1, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$1;->this$0:Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    invoke-static {v1}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->access$000(Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 106
    return-void
.end method
