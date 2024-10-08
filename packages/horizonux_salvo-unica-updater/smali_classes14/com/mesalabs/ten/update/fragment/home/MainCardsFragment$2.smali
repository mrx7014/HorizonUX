.class Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$2;
.super Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;
.source "MainCardsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 129
    iput-object p1, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$2;->this$0:Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$2;->this$0:Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$2;->this$0:Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    invoke-static {v2}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->access$100(Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method
