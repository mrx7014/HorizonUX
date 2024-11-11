.class public Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "ToolbarImageButton.java"


# instance fields
.field private mIcon:Z

.field private mToolTipText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslTooltip;->seslSetTooltipNull(Z)V

    .line 46
    iget-boolean v1, p0, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->mIcon:Z

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 55
    :pswitch_1
    invoke-static {v2}, Lcom/samsung/android/ui/widget/SeslTooltip;->seslSetTooltipNull(Z)V

    .line 56
    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslTooltip;->seslSetTooltipForceBelow(Z)V

    .line 57
    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslTooltip;->seslSetTooltipForceActionBarPosX(Z)V

    goto :goto_0

    .line 50
    :pswitch_2
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->mToolTipText:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/ui/widget/SeslTooltip;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {v2}, Lcom/samsung/android/ui/widget/SeslTooltip;->seslSetTooltipForceBelow(Z)V

    .line 52
    invoke-static {v2}, Lcom/samsung/android/ui/widget/SeslTooltip;->seslSetTooltipForceActionBarPosX(Z)V

    .line 61
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onHoverChanged(Z)V
    .locals 1
    .param p1, "hovered"    # Z

    .line 66
    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslTooltip;->seslSetTooltipNull(Z)V

    .line 67
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onHoverChanged(Z)V

    .line 68
    return-void
.end method

.method public performLongClick()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->mIcon:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageButton;->performLongClick()Z

    move-result v0

    return v0

    .line 75
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslTooltip;->seslSetTooltipNull(Z)V

    .line 76
    return v0
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 82
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->mIcon:Z

    .line 84
    return-void
.end method

.method public setTooltipText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 87
    invoke-static {p0, p1}, Lcom/samsung/android/ui/widget/SeslTooltip;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 88
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->mToolTipText:Ljava/lang/String;

    .line 89
    return-void
.end method
