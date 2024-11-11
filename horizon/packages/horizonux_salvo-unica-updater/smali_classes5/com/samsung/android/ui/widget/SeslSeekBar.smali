.class public Lcom/samsung/android/ui/widget/SeslSeekBar;
.super Lcom/samsung/android/ui/widget/SeslAbsSeekBar;
.source "SeslSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarHoverListener;,
        Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field public mOldValue:I

.field public mOnSeekBarChangeListener:Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;

.field public mOnSeekBarHoverListener:Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarHoverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 36
    const v0, 0x7f0402f5

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 48
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onHoverChanged(III)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 52
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSeekBar;->mOnSeekBarHoverListener:Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarHoverListener;

    .line 53
    .local v0, "var4":Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarHoverListener;
    if-eqz v0, :cond_0

    .line 54
    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarHoverListener;->onHoverChanged(Lcom/samsung/android/ui/widget/SeslSeekBar;IZ)V

    .line 57
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onHoverChanged(III)V

    .line 58
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 61
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSeekBar;->canUserSetProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onProgressRefresh(FZI)V
    .locals 2
    .param p1, "var1"    # F
    .param p2, "var2"    # Z
    .param p3, "var3"    # I

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onProgressRefresh(FZI)V

    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSeekBar;->mOnSeekBarChangeListener:Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 73
    .local v0, "var4":Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;
    if-eqz v0, :cond_1

    .line 74
    invoke-interface {v0, p0, p3, p2}, Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/samsung/android/ui/widget/SeslSeekBar;IZ)V

    goto :goto_0

    .line 77
    .end local v0    # "var4":Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;
    :cond_0
    int-to-float v0, p3

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 78
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslSeekBar;->mOldValue:I

    if-eq v0, p3, :cond_1

    .line 79
    iput p3, p0, Lcom/samsung/android/ui/widget/SeslSeekBar;->mOldValue:I

    .line 80
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSeekBar;->mOnSeekBarChangeListener:Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 81
    .restart local v0    # "var4":Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;
    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0, p0, p3, p2}, Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/samsung/android/ui/widget/SeslSeekBar;IZ)V

    .line 87
    .end local v0    # "var4":Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;
    :cond_1
    :goto_0
    return-void
.end method

.method public onStartTrackingHover(III)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 90
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSeekBar;->mOnSeekBarHoverListener:Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarHoverListener;

    .line 91
    .local v0, "var4":Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarHoverListener;
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarHoverListener;->onStartTrackingHover(Lcom/samsung/android/ui/widget/SeslSeekBar;I)V

    .line 95
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onStartTrackingHover(III)V

    .line 96
    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onStartTrackingTouch()V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSeekBar;->mOnSeekBarChangeListener:Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 101
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, p0}, Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/samsung/android/ui/widget/SeslSeekBar;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onStopTrackingHover()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSeekBar;->mOnSeekBarHoverListener:Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarHoverListener;

    .line 109
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarHoverListener;
    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p0}, Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarHoverListener;->onStopTrackingHover(Lcom/samsung/android/ui/widget/SeslSeekBar;)V

    .line 113
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onStopTrackingHover()V

    .line 114
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSeekBar;->mOnSeekBarChangeListener:Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 119
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;
    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0, p0}, Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/samsung/android/ui/widget/SeslSeekBar;)V

    .line 123
    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 126
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslSeekBar;->mOnSeekBarChangeListener:Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 127
    return-void
.end method

.method public setOnSeekBarHoverListener(Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarHoverListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarHoverListener;

    .line 130
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslSeekBar;->mOnSeekBarHoverListener:Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarHoverListener;

    .line 131
    return-void
.end method
