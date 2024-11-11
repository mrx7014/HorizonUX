.class Lcom/mesalabs/ten/update/activity/home/MainActivity$6;
.super Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/ten/update/activity/home/MainActivity;->animateBottomInstallButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;


# direct methods
.method constructor <init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 333
    iput-object p1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$6;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 336
    new-instance v0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;

    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$6;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$1100(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 337
    return-void
.end method
