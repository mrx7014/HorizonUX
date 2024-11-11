.class Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$2;
.super Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;
.source "ChangelogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;


# direct methods
.method constructor <init>(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    .line 83
    iput-object p1, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$2;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$2;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->onBackPressed()V

    .line 87
    return-void
.end method
