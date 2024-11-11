.class Lcom/samsung/android/ui/widget/SeslTooltipPopup$1;
.super Ljava/lang/Object;
.source "SeslTooltipPopup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/widget/SeslTooltipPopup;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/widget/SeslTooltipPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/widget/SeslTooltipPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/widget/SeslTooltipPopup;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup$1;->this$0:Lcom/samsung/android/ui/widget/SeslTooltipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/MotionEvent;

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 67
    .local v0, "var3":I
    if-eqz v0, :cond_1

    .line 68
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 69
    return v2

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup$1;->this$0:Lcom/samsung/android/ui/widget/SeslTooltipPopup;

    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->hide()V

    .line 72
    return v2

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup$1;->this$0:Lcom/samsung/android/ui/widget/SeslTooltipPopup;

    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->hide()V

    .line 76
    const/4 v1, 0x1

    return v1
.end method
