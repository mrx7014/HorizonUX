.class Lcom/mesalabs/cerberus/base/BaseAboutActivity$1;
.super Ljava/lang/Object;
.source "BaseAboutActivity.java"

# interfaces
.implements Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$StubListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mesalabs/cerberus/base/BaseAboutActivity;
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

    .line 66
    iput-object p1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$1;->this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateCheckCompleted(I)V
    .locals 1
    .param p1, "status"    # I

    .line 68
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$1;->this$0:Lcom/mesalabs/cerberus/base/BaseAboutActivity;

    invoke-static {v0, p1}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->access$000(Lcom/mesalabs/cerberus/base/BaseAboutActivity;I)V

    .line 69
    return-void
.end method
