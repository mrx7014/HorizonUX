.class Lcom/mesalabs/cerberus/base/BaseAboutActivity$2;
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

    .line 78
    iput-object p1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$2;->this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$2;->this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    invoke-virtual {v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->onBackPressed()V

    .line 82
    return-void
.end method
