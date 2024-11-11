.class Lcom/mesalabs/ten/update/activity/settings/SettingsActivity$1;
.super Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;

    .line 39
    iput-object p1, p0, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity$1;->this$0:Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity$1;->this$0:Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;->onBackPressed()V

    .line 43
    return-void
.end method
