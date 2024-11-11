.class Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$1;
.super Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;
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
    .locals 1
    .param p1, "this$0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    .line 77
    iput-object p1, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$1;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;-><init>(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$1;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)V
    .locals 4
    .param p1, "appBarLayout"    # Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    .param p2, "state"    # I

    .line 80
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$1;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    iget v1, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$1;->STATE_COLLAPSED:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$1;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v1}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$100(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$1;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v1}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$200(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v0, v2}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$300(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;Z)V

    .line 81
    return-void
.end method
