.class Lcom/mesalabs/cerberus/base/BaseAboutActivity$3;
.super Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;
.source "BaseAboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/cerberus/base/BaseAboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;


# direct methods
.method constructor <init>(Lcom/mesalabs/cerberus/base/BaseAboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    .line 86
    iput-object p1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$3;->this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/mesalabs/ten/update/TenUpdateApp;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$3;->this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    invoke-virtual {v1, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method
