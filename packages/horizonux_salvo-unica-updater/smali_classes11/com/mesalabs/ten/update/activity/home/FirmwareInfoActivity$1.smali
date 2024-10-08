.class Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity$1;
.super Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;
.source "FirmwareInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;


# direct methods
.method constructor <init>(Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;

    .line 34
    iput-object p1, p0, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity$1;->this$0:Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity$1;->this$0:Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->onBackPressed()V

    .line 38
    return-void
.end method
