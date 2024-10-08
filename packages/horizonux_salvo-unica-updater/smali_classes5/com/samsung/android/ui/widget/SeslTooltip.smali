.class public Lcom/samsung/android/ui/widget/SeslTooltip;
.super Ljava/lang/Object;
.source "SeslTooltip.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field private static final HOVER_HIDE_TIMEOUT_MS:J = 0x3a98L

.field private static final HOVER_HIDE_TIMEOUT_SHORT_MS:J = 0xbb8L

.field private static final LONG_CLICK_HIDE_TIMEOUT_MS:J = 0x9c4L

.field private static final TAG:Ljava/lang/String; = "SeslTooltip"

.field private static mIsForceActionBarX:Z

.field private static mIsForceBelow:Z

.field private static sActiveHandler:Lcom/samsung/android/ui/widget/SeslTooltip;

.field private static sIsCustomTooltipPosition:Z

.field private static sIsTooltipNull:Z

.field private static sLayoutDirection:I

.field private static sPendingHandler:Lcom/samsung/android/ui/widget/SeslTooltip;

.field private static sPosX:I

.field private static sPosY:I


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private mAnchorX:I

.field private mAnchorY:I

.field private mFromTouch:Z

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private final mHoverSlop:I

.field private mIsSPenPointChanged:Z

.field private mIsShowRunnablePostDelayed:Z

.field private mPopup:Lcom/samsung/android/ui/widget/SeslTooltipPopup;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private final mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Ljava/lang/CharSequence;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/samsung/android/ui/widget/SeslTooltip$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/widget/SeslTooltip$1;-><init>(Lcom/samsung/android/ui/widget/SeslTooltip;)V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mHideRunnable:Ljava/lang/Runnable;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsSPenPointChanged:Z

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsShowRunnablePostDelayed:Z

    .line 62
    new-instance v0, Lcom/samsung/android/ui/widget/SeslTooltip$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/widget/SeslTooltip$2;-><init>(Lcom/samsung/android/ui/widget/SeslTooltip;)V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mShowRunnable:Ljava/lang/Runnable;

    .line 70
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    .line 71
    iput-object p2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mTooltipText:Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewConfigurationCompat;->getScaledHoverSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mHoverSlop:I

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslTooltip;->clearAnchorPos()V

    .line 74
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 76
    return-void
.end method

.method private cancelPendingShow()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method

.method private clearAnchorPos()V
    .locals 1

    .line 83
    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchorX:I

    .line 84
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchorY:I

    .line 85
    return-void
.end method

.method private scheduleShow()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    return-void
.end method

.method public static seslSetTooltipForceActionBarPosX(Z)V
    .locals 0
    .param p0, "var0"    # Z

    .line 92
    sput-boolean p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsForceActionBarX:Z

    .line 93
    return-void
.end method

.method public static seslSetTooltipForceBelow(Z)V
    .locals 0
    .param p0, "var0"    # Z

    .line 96
    sput-boolean p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsForceBelow:Z

    .line 97
    return-void
.end method

.method public static seslSetTooltipNull(Z)V
    .locals 0
    .param p0, "var0"    # Z

    .line 100
    sput-boolean p0, Lcom/samsung/android/ui/widget/SeslTooltip;->sIsTooltipNull:Z

    .line 101
    return-void
.end method

.method public static seslSetTooltipPosition(III)V
    .locals 1
    .param p0, "var0"    # I
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 104
    sput p2, Lcom/samsung/android/ui/widget/SeslTooltip;->sLayoutDirection:I

    .line 105
    sput p0, Lcom/samsung/android/ui/widget/SeslTooltip;->sPosX:I

    .line 106
    sput p1, Lcom/samsung/android/ui/widget/SeslTooltip;->sPosY:I

    .line 107
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/ui/widget/SeslTooltip;->sIsCustomTooltipPosition:Z

    .line 108
    return-void
.end method

.method public static setPendingHandler(Lcom/samsung/android/ui/widget/SeslTooltip;)V
    .locals 1
    .param p0, "var0"    # Lcom/samsung/android/ui/widget/SeslTooltip;

    .line 111
    sget-object v0, Lcom/samsung/android/ui/widget/SeslTooltip;->sPendingHandler:Lcom/samsung/android/ui/widget/SeslTooltip;

    .line 112
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslTooltip;
    if-eqz v0, :cond_0

    .line 113
    invoke-direct {v0}, Lcom/samsung/android/ui/widget/SeslTooltip;->cancelPendingShow()V

    .line 116
    :cond_0
    sput-object p0, Lcom/samsung/android/ui/widget/SeslTooltip;->sPendingHandler:Lcom/samsung/android/ui/widget/SeslTooltip;

    .line 117
    sget-object p0, Lcom/samsung/android/ui/widget/SeslTooltip;->sPendingHandler:Lcom/samsung/android/ui/widget/SeslTooltip;

    .line 118
    if-eqz p0, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslTooltip;->scheduleShow()V

    .line 122
    :cond_1
    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 4
    .param p0, "var0"    # Landroid/view/View;
    .param p1, "var1"    # Ljava/lang/CharSequence;

    .line 125
    if-nez p0, :cond_0

    .line 126
    const-string v0, "SeslTooltip"

    const-string v1, "view is null"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    sget-object v0, Lcom/samsung/android/ui/widget/SeslTooltip;->sPendingHandler:Lcom/samsung/android/ui/widget/SeslTooltip;

    .line 129
    .local v0, "var2":Lcom/samsung/android/ui/widget/SeslTooltip;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    if-ne v2, p0, :cond_1

    .line 130
    invoke-static {v1}, Lcom/samsung/android/ui/widget/SeslTooltip;->setPendingHandler(Lcom/samsung/android/ui/widget/SeslTooltip;)V

    .line 133
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    sget-object v2, Lcom/samsung/android/ui/widget/SeslTooltip;->sActiveHandler:Lcom/samsung/android/ui/widget/SeslTooltip;

    .line 135
    .local v2, "var3":Lcom/samsung/android/ui/widget/SeslTooltip;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    if-ne v3, p0, :cond_2

    .line 136
    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslTooltip;->hide()V

    .line 139
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 140
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 141
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 142
    .end local v2    # "var3":Lcom/samsung/android/ui/widget/SeslTooltip;
    goto :goto_0

    .line 143
    :cond_3
    sget-object v0, Lcom/samsung/android/ui/widget/SeslTooltip;->sActiveHandler:Lcom/samsung/android/ui/widget/SeslTooltip;

    .line 144
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    if-ne v1, p0, :cond_4

    .line 145
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslTooltip;->hide()V

    goto :goto_0

    .line 147
    :cond_4
    new-instance v1, Lcom/samsung/android/ui/widget/SeslTooltip;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/ui/widget/SeslTooltip;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 152
    .end local v0    # "var2":Lcom/samsung/android/ui/widget/SeslTooltip;
    :goto_0
    return-void
.end method

.method private showPenPointEffect(Landroid/view/MotionEvent;Z)V
    .locals 7
    .param p1, "var1"    # Landroid/view/MotionEvent;
    .param p2, "var2"    # Z

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 156
    const-string v1, "hidden_setPointerIconType"

    const-string v2, "setPointerIconType"

    const/16 v3, 0x1d

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    .line 157
    const-class v5, Landroid/hardware/input/InputManager;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    const/16 v3, 0x4e2a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v5, v1, v2}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iput-boolean v4, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsSPenPointChanged:Z

    goto :goto_2

    .line 159
    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsSPenPointChanged:Z

    if-eqz v5, :cond_3

    .line 160
    const-class v5, Landroid/hardware/input/InputManager;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    new-array v2, v4, [Ljava/lang/Object;

    const/16 v3, 0x4e21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v5, v1, v2}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsSPenPointChanged:Z

    .line 165
    :cond_3
    :goto_2
    return-void
.end method

.method private update(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/CharSequence;

    .line 168
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mPopup:Lcom/samsung/android/ui/widget/SeslTooltipPopup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->updateContent(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method private updateAnchorPos(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 173
    .local v0, "var2":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 174
    .local v1, "var3":I
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchorX:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mHoverSlop:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchorY:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mHoverSlop:I

    if-gt v2, v3, :cond_0

    .line 175
    const/4 v2, 0x0

    return v2

    .line 177
    :cond_0
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchorX:I

    .line 178
    iput v1, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchorY:I

    .line 179
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public hide()V
    .locals 4

    .line 184
    sget-object v0, Lcom/samsung/android/ui/widget/SeslTooltip;->sActiveHandler:Lcom/samsung/android/ui/widget/SeslTooltip;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1

    .line 185
    sput-object v1, Lcom/samsung/android/ui/widget/SeslTooltip;->sActiveHandler:Lcom/samsung/android/ui/widget/SeslTooltip;

    .line 186
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mPopup:Lcom/samsung/android/ui/widget/SeslTooltipPopup;

    .line 187
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslTooltipPopup;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->hide()V

    .line 189
    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mPopup:Lcom/samsung/android/ui/widget/SeslTooltipPopup;

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslTooltip;->clearAnchorPos()V

    .line 191
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    .line 193
    :cond_0
    const-string v2, "SeslTooltip"

    const-string v3, "sActiveHandler.mPopup == null"

    invoke-static {v2, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .end local v0    # "var1":Lcom/samsung/android/ui/widget/SeslTooltipPopup;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsShowRunnablePostDelayed:Z

    .line 198
    sget-object v2, Lcom/samsung/android/ui/widget/SeslTooltip;->sPendingHandler:Lcom/samsung/android/ui/widget/SeslTooltip;

    if-ne v2, p0, :cond_2

    .line 199
    invoke-static {v1}, Lcom/samsung/android/ui/widget/SeslTooltip;->setPendingHandler(Lcom/samsung/android/ui/widget/SeslTooltip;)V

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 203
    sput v0, Lcom/samsung/android/ui/widget/SeslTooltip;->sPosX:I

    .line 204
    sput v0, Lcom/samsung/android/ui/widget/SeslTooltip;->sPosY:I

    .line 205
    sput-boolean v0, Lcom/samsung/android/ui/widget/SeslTooltip;->sIsTooltipNull:Z

    .line 206
    sput-boolean v0, Lcom/samsung/android/ui/widget/SeslTooltip;->sIsCustomTooltipPosition:Z

    .line 207
    return-void
.end method

.method public isSPenHoveringSettingsEnabled()Z
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/MotionEvent;

    .line 214
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mPopup:Lcom/samsung/android/ui/widget/SeslTooltipPopup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mFromTouch:Z

    if-eqz v0, :cond_0

    .line 215
    return v1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    const-string v2, "SeslTooltip"

    if-nez v0, :cond_1

    .line 217
    const-string v0, "TooltipCompat Anchor view is null"

    invoke-static {v2, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return v1

    .line 220
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 221
    .local v0, "var3":Landroid/content/Context;
    const/16 v3, 0x4002

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    const/16 v4, 0x4e21

    const/4 v5, 0x3

    const-string v6, "hidden_semSetPointerIcon"

    const-string v7, "semSetPointerIcon"

    const/16 v8, 0x1d

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslTooltip;->isSPenHoveringSettingsEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 222
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mPopup:Lcom/samsung/android/ui/widget/SeslTooltipPopup;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 223
    const-class v2, Landroid/view/View;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_2

    goto :goto_0

    :cond_2
    move-object v6, v7

    :goto_0
    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v9

    invoke-static {v0, v4}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v6, v3}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_3
    return v1

    .line 228
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v11, "accessibility"

    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 229
    .local v3, "var4":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 230
    return v1

    .line 232
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 233
    .local v11, "var5":I
    const/4 v12, 0x7

    if-eq v11, v12, :cond_a

    .line 234
    const/16 v12, 0x9

    if-eq v11, v12, :cond_8

    .line 235
    const/16 v12, 0xa

    if-ne v11, v12, :cond_b

    .line 236
    const-string v12, "MotionEvent.ACTION_HOVER_EXIT : hide SeslTooltipPopup"

    invoke-static {v2, v12}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mPopup:Lcom/samsung/android/ui/widget/SeslTooltipPopup;

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 238
    const-class v2, Landroid/view/View;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v8, :cond_6

    goto :goto_1

    :cond_6
    move-object v6, v7

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-static {v0, v4}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    aput-object v4, v5, v10

    invoke-static {v2, v6, v5}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslTooltip;->hide()V

    goto :goto_3

    .line 243
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mPopup:Lcom/samsung/android/ui/widget/SeslTooltipPopup;

    if-nez v2, :cond_b

    if-eqz v0, :cond_b

    .line 244
    const-class v2, Landroid/view/View;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_9

    goto :goto_2

    :cond_9
    move-object v6, v7

    :goto_2
    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const/16 v5, 0x4e2a

    invoke-static {v0, v5}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2, v6, v4}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 246
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mPopup:Lcom/samsung/android/ui/widget/SeslTooltipPopup;

    if-nez v2, :cond_b

    .line 247
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchorX:I

    .line 248
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchorY:I

    .line 249
    iget-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsShowRunnablePostDelayed:Z

    if-nez v2, :cond_b

    .line 250
    invoke-static {p0}, Lcom/samsung/android/ui/widget/SeslTooltip;->setPendingHandler(Lcom/samsung/android/ui/widget/SeslTooltip;)V

    .line 251
    iput-boolean v9, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsShowRunnablePostDelayed:Z

    .line 255
    :cond_b
    :goto_3
    return v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchorX:I

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchorY:I

    .line 264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslTooltip;->show(Z)V

    .line 265
    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;

    .line 269
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslTooltip;->hide()V

    .line 273
    return-void
.end method

.method public show(Z)V
    .locals 9
    .param p1, "var1"    # Z

    .line 276
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 277
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslTooltip;->setPendingHandler(Lcom/samsung/android/ui/widget/SeslTooltip;)V

    .line 278
    sget-object v0, Lcom/samsung/android/ui/widget/SeslTooltip;->sActiveHandler:Lcom/samsung/android/ui/widget/SeslTooltip;

    .line 279
    .local v0, "var2":Lcom/samsung/android/ui/widget/SeslTooltip;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslTooltip;->hide()V

    .line 283
    :cond_0
    sput-object p0, Lcom/samsung/android/ui/widget/SeslTooltip;->sActiveHandler:Lcom/samsung/android/ui/widget/SeslTooltip;

    .line 284
    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mFromTouch:Z

    .line 285
    new-instance v1, Lcom/samsung/android/ui/widget/SeslTooltipPopup;

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mPopup:Lcom/samsung/android/ui/widget/SeslTooltipPopup;

    .line 286
    sget-boolean v2, Lcom/samsung/android/ui/widget/SeslTooltip;->sIsCustomTooltipPosition:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 287
    sput-boolean v3, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsForceBelow:Z

    .line 288
    sput-boolean v3, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsForceActionBarX:Z

    .line 289
    sget-boolean v2, Lcom/samsung/android/ui/widget/SeslTooltip;->sIsTooltipNull:Z

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 290
    return-void

    .line 293
    :cond_1
    sget v2, Lcom/samsung/android/ui/widget/SeslTooltip;->sPosX:I

    sget v4, Lcom/samsung/android/ui/widget/SeslTooltip;->sPosY:I

    sget v5, Lcom/samsung/android/ui/widget/SeslTooltip;->sLayoutDirection:I

    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->showActionItemTooltip(IIILjava/lang/CharSequence;)V

    .line 294
    sput-boolean v3, Lcom/samsung/android/ui/widget/SeslTooltip;->sIsCustomTooltipPosition:Z

    goto :goto_0

    .line 296
    :cond_2
    sget-boolean v2, Lcom/samsung/android/ui/widget/SeslTooltip;->sIsTooltipNull:Z

    if-eqz v2, :cond_3

    .line 297
    return-void

    .line 300
    :cond_3
    sget-boolean v7, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsForceBelow:Z

    if-nez v7, :cond_4

    sget-boolean v2, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsForceActionBarX:Z

    if-nez v2, :cond_4

    .line 301
    sput-boolean v3, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsForceBelow:Z

    .line 302
    sput-boolean v3, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsForceActionBarX:Z

    .line 303
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchorX:I

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchorY:I

    iget-boolean v5, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mFromTouch:Z

    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->show(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    goto :goto_0

    .line 305
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchorX:I

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchorY:I

    iget-boolean v5, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mFromTouch:Z

    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mTooltipText:Ljava/lang/CharSequence;

    sget-boolean v8, Lcom/samsung/android/ui/widget/SeslTooltip;->mIsForceActionBarX:Z

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->show(Landroid/view/View;IIZLjava/lang/CharSequence;ZZ)V

    .line 309
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 311
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mFromTouch:Z

    if-eqz v1, :cond_5

    .line 312
    const-wide/16 v1, 0x9c4

    .local v1, "var3":J
    goto :goto_2

    .line 315
    .end local v1    # "var3":J
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 316
    const-wide/16 v1, 0xbb8

    .line 317
    .restart local v1    # "var3":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .local v3, "var5":I
    goto :goto_1

    .line 319
    .end local v1    # "var3":J
    .end local v3    # "var5":I
    :cond_6
    const-wide/16 v1, 0x3a98

    .line 320
    .restart local v1    # "var3":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 323
    .restart local v3    # "var5":I
    :goto_1
    int-to-long v4, v3

    sub-long/2addr v1, v4

    .line 326
    .end local v3    # "var5":I
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 327
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mAnchor:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslTooltip;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 329
    .end local v0    # "var2":Lcom/samsung/android/ui/widget/SeslTooltip;
    .end local v1    # "var3":J
    :cond_7
    return-void
.end method
