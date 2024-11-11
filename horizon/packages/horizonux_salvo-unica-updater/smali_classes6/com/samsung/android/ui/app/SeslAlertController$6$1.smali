.class Lcom/samsung/android/ui/app/SeslAlertController$6$1;
.super Ljava/lang/Object;
.source "SeslAlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/app/SeslAlertController$6;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/ui/app/SeslAlertController$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/app/SeslAlertController$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/ui/app/SeslAlertController$6;

    .line 697
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController$6$1;->this$1:Lcom/samsung/android/ui/app/SeslAlertController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 699
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$6$1;->this$1:Lcom/samsung/android/ui/app/SeslAlertController$6;

    iget-object v0, v0, Lcom/samsung/android/ui/app/SeslAlertController$6;->this$0:Lcom/samsung/android/ui/app/SeslAlertController;

    iget-object v0, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 700
    .local v0, "var1x":I
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$6$1;->this$1:Lcom/samsung/android/ui/app/SeslAlertController$6;

    iget-object v1, v1, Lcom/samsung/android/ui/app/SeslAlertController$6;->this$0:Lcom/samsung/android/ui/app/SeslAlertController;

    .line 701
    .local v1, "var2":Lcom/samsung/android/ui/app/SeslAlertController;
    iget v2, v1, Lcom/samsung/android/ui/app/SeslAlertController;->mLastOrientation:I

    if-eq v0, v2, :cond_0

    .line 702
    invoke-static {v1}, Lcom/samsung/android/ui/app/SeslAlertController;->access$000(Lcom/samsung/android/ui/app/SeslAlertController;)V

    .line 703
    iget-object v2, p0, Lcom/samsung/android/ui/app/SeslAlertController$6$1;->this$1:Lcom/samsung/android/ui/app/SeslAlertController$6;

    iget-object v2, v2, Lcom/samsung/android/ui/app/SeslAlertController$6;->val$var1:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 706
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/app/SeslAlertController$6$1;->this$1:Lcom/samsung/android/ui/app/SeslAlertController$6;

    iget-object v1, v2, Lcom/samsung/android/ui/app/SeslAlertController$6;->this$0:Lcom/samsung/android/ui/app/SeslAlertController;

    .line 707
    iget-object v2, v1, Lcom/samsung/android/ui/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, v1, Lcom/samsung/android/ui/app/SeslAlertController;->mLastOrientation:I

    .line 708
    return-void
.end method
