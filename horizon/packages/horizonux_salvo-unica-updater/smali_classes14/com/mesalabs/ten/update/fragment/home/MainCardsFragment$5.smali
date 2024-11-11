.class Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$5;
.super Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;
.source "MainCardsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->postROMUpdatesCheck(I)V
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

    .line 198
    iput-object p1, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$5;->this$0:Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$5;->this$0:Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    invoke-static {v0}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->access$000(Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->onPreROMUpdateDownload()V

    .line 202
    return-void
.end method
