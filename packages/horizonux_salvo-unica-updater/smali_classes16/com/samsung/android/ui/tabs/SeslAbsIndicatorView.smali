.class public abstract Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
.super Landroid/view/View;
.source "SeslAbsIndicatorView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method


# virtual methods
.method abstract onHide()V
.end method

.method abstract onSetSelectedIndicatorColor(I)V
.end method

.method abstract onShow()V
.end method

.method public setHide()V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->onHide()V

    .line 63
    return-void
.end method

.method public setPressed()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->startPressEffect()V

    .line 55
    return-void
.end method

.method public setReleased()V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->startReleaseEffect()V

    .line 59
    return-void
.end method

.method public setSelectedIndicatorColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->onSetSelectedIndicatorColor(I)V

    .line 51
    return-void
.end method

.method public setShow()V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->onShow()V

    .line 67
    return-void
.end method

.method abstract startPressEffect()V
.end method

.method abstract startReleaseEffect()V
.end method
