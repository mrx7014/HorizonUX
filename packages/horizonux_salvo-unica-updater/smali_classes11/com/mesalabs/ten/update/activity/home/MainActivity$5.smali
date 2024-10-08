.class Lcom/mesalabs/ten/update/activity/home/MainActivity$5;
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

    .line 243
    iput-object p1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$5;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 254
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$5;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$400(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$5;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$700(Lcom/mesalabs/ten/update/activity/home/MainActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$5;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$700(Lcom/mesalabs/ten/update/activity/home/MainActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$800(Lcom/mesalabs/ten/update/activity/home/MainActivity;I)V

    .line 256
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$5;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$300(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$5;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$500(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 257
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$5;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$600(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v0

    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$5;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$500(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 258
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 250
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 246
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$5;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$600(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v0

    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$5;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$1000(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 247
    return-void
.end method
