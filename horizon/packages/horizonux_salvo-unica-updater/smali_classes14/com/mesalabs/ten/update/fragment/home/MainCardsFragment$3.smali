.class Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$3;
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

    .line 142
    iput-object p1, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$3;->this$0:Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$3;->this$0:Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    invoke-static {v0}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->access$100(Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.mesalabs.on.workshop"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 147
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "mesa_tb_category"

    const-string v3, "about_device"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$3;->this$0:Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    invoke-static {v2}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->access$100(Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    .end local v1    # "b":Landroid/os/Bundle;
    goto :goto_0

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$3;->this$0:Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$3;->this$0:Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    invoke-static {v3}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->access$100(Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->startActivity(Landroid/content/Intent;)V

    .line 156
    :goto_0
    return-void
.end method
