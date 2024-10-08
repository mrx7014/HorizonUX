.class Lcom/mesalabs/cerberus/base/BaseAboutActivity$8;
.super Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;
.source "BaseAboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setClickListener()V
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

    .line 235
    iput-object p1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$8;->this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$8;->this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$8;->this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    iget-object v2, v2, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 238
    return-void
.end method
