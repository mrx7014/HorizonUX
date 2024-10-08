.class Lcom/mesalabs/ten/update/activity/home/MainActivity$3;
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

    .line 208
    iput-object p1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$3;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 220
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 217
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 211
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$3;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$300(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 212
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$3;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$400(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 213
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$3;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$600(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v0

    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity$3;->this$0:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->access$500(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 214
    return-void
.end method
