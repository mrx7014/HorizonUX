.class Lcom/mesalabs/ten/update/activity/home/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/ten/update/activity/home/MainActivity;->initAnimationFields()V
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

    .line 224
    iput-object p1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$4;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 233
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$4;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$300(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 234
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$4;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$400(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 235
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$4;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$400(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$4;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$700(Lcom/mesalabs/ten/update/activity/home/MainActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$800(Lcom/mesalabs/ten/update/activity/home/MainActivity;I)V

    .line 237
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$4;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$900(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->startDownload()V

    .line 238
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 229
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 226
    return-void
.end method
