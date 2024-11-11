.class Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter$1;
.super Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;
.source "CreditsPageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;->onBindViewHolder(Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;

    .line 61
    iput-object p1, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter$1;->this$0:Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;

    iput p2, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter$1;->val$position:I

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter$1;->this$0:Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;

    invoke-static {v0}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;->access$000(Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->getLibWebLink()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "webLink":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 69
    iget-object v2, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter$1;->this$0:Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;

    invoke-static {v2}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;->access$100(Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;)Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
