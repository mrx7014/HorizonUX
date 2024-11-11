.class Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity$1;
.super Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;
.source "OpenSourceLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;


# direct methods
.method constructor <init>(Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;

    .line 41
    iput-object p1, p0, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity$1;->this$0:Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity$1;->this$0:Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->finish()V

    .line 45
    return-void
.end method
