.class Lcom/mesalabs/cerberus/base/BaseAboutActivity$4;
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

    .line 209
    iput-object p1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$4;->this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 211
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$4;->this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    iget v0, v0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCheckingStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$4;->this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    iget-object v0, v0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAppUpdate:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;

    invoke-virtual {v0}, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->installUpdate()V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$4;->this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    iget-object v0, v0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mesalabs/cerberus/utils/StateUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$4;->this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    invoke-virtual {v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->checkForUpdatesNotCompleted()V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$4;->this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    iget-object v0, v0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$4;->this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    const v2, 0x7f0f0085

    invoke-virtual {v1, v2}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    :goto_0
    return-void
.end method
