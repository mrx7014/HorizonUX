.class public Lcom/samsung/android/ui/widget/SeslSwitch;
.super Landroid/widget/CompoundButton;
.source "SeslSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_EVENT_CLASS_NAME:Ljava/lang/String; = "android.widget.Switch"

.field private static final CHANGE_FLING_VELOCITY:I = 0x7d0

.field private static final CHECKED_STATE_SET:[I

.field private static final MIN_FLING_VELOCITY:I = 0x1f4

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final THUMB_ANIMATION_DURATION:I = 0x96

.field private static final THUMB_ANIMATION_DURATION_ABOVE_M:I = 0x1f4

.field private static final THUMB_POS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/samsung/android/ui/widget/SeslSwitch;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTrackTint:Z

.field private mHasTrackTintMode:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field mPositionAnimator:Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackTintList:Landroid/content/res/ColorStateList;

.field private mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/ui/widget/SeslSwitch;->CHECKED_STATE_SET:[I

    .line 77
    new-instance v0, Lcom/samsung/android/ui/widget/SeslSwitch$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "thumbPos"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ui/widget/SeslSwitch$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/ui/widget/SeslSwitch;->THUMB_POS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/widget/SeslSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 138
    const v0, 0x7f04034d

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/widget/SeslSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasThumbTint:Z

    .line 93
    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasThumbTintMode:Z

    .line 94
    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasTrackTint:Z

    .line 95
    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasTrackTintMode:Z

    .line 111
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTempRect:Landroid/graphics/Rect;

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 120
    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 129
    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 130
    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 131
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 144
    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextPaint:Landroid/text/TextPaint;

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 147
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v2, Landroid/text/TextPaint;->density:F

    .line 149
    sget-object v2, Lcom/mesalabs/ten/update/R$styleable;->SeslSwitch:[I

    invoke-static {p1, p2, v2, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v2

    .line 150
    .local v2, "a":Landroidx/appcompat/widget/TintTypedArray;
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    if-eqz v6, :cond_0

    .line 152
    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 154
    :cond_0
    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 155
    if-eqz v6, :cond_1

    .line 156
    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 157
    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    new-array v7, v5, [I

    fill-array-data v7, :array_0

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 160
    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 162
    :cond_1
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextOn:Ljava/lang/CharSequence;

    .line 163
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextOff:Ljava/lang/CharSequence;

    .line 164
    const/4 v5, 0x3

    invoke-virtual {v2, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mShowText:Z

    .line 165
    const/16 v5, 0x8

    invoke-virtual {v2, v5, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbTextPadding:I

    .line 166
    const/4 v5, 0x5

    invoke-virtual {v2, v5, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchMinWidth:I

    .line 167
    const/4 v5, 0x6

    invoke-virtual {v2, v5, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchPadding:I

    .line 168
    const/4 v5, 0x4

    invoke-virtual {v2, v5, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSplitTrack:Z

    .line 170
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 171
    .local v5, "thumbTintList":Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_2

    .line 172
    iput-object v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 173
    iput-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasThumbTint:Z

    .line 175
    :cond_2
    const/16 v6, 0xa

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    .line 176
    .local v6, "thumbTintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v8, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v8, v6, :cond_3

    .line 177
    iput-object v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 178
    iput-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasThumbTintMode:Z

    .line 180
    :cond_3
    iget-boolean v8, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasThumbTint:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasThumbTintMode:Z

    if-eqz v8, :cond_5

    .line 181
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->applyThumbTint()V

    .line 184
    :cond_5
    const/16 v8, 0xc

    invoke-virtual {v2, v8}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 185
    .local v8, "trackTintList":Landroid/content/res/ColorStateList;
    if-eqz v8, :cond_6

    .line 186
    iput-object v8, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 187
    iput-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasTrackTint:Z

    .line 189
    :cond_6
    const/16 v9, 0xd

    invoke-virtual {v2, v9, v7}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v7

    invoke-static {v7, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 190
    .local v1, "trackTintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v7, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v7, v1, :cond_7

    .line 191
    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 192
    iput-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasTrackTintMode:Z

    .line 194
    :cond_7
    iget-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasTrackTint:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasTrackTintMode:Z

    if-eqz v3, :cond_9

    .line 195
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->applyTrackTint()V

    .line 198
    :cond_9
    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 199
    .local v0, "appearance":I
    if-eqz v0, :cond_a

    .line 200
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/widget/SeslSwitch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 203
    :cond_a
    invoke-virtual {v2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 205
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 206
    .local v3, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchSlop:I

    .line 207
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mMinFlingVelocity:I

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->refreshDrawableState()V

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->isChecked()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/ui/widget/SeslSwitch;->setChecked(Z)V

    .line 211
    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/ui/widget/SeslSwitch;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/widget/SeslSwitch;

    .line 65
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbPosition:F

    return v0
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 4
    .param p1, "newCheckedState"    # Z

    .line 684
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mPositionAnimator:Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;

    if-eqz v0, :cond_0

    .line 685
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->cancelPositionAnimator()V

    .line 688
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 689
    .local v0, "targetPosition":F
    :goto_0
    new-instance v1, Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbPosition:F

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;-><init>(Lcom/samsung/android/ui/widget/SeslSwitch;FF)V

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mPositionAnimator:Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;

    .line 690
    sget-object v2, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;->ELASTIC_50:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 691
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mPositionAnimator:Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;->setDuration(J)V

    .line 692
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mPositionAnimator:Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;

    new-instance v2, Lcom/samsung/android/ui/widget/SeslSwitch$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/ui/widget/SeslSwitch$2;-><init>(Lcom/samsung/android/ui/widget/SeslSwitch;F)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 705
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mPositionAnimator:Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslSwitch;->startAnimation(Landroid/view/animation/Animation;)V

    .line 706
    return-void
.end method

.method private applyThumbTint()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasThumbTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasThumbTintMode:Z

    if-eqz v1, :cond_3

    .line 425
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 427
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasThumbTint:Z

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 431
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 439
    :cond_3
    return-void
.end method

.method private applyTrackTint()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasTrackTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasTrackTintMode:Z

    if-eqz v1, :cond_3

    .line 370
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 372
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasTrackTint:Z

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 376
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasTrackTintMode:Z

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 384
    :cond_3
    return-void
.end method

.method private cancelPositionAnimator()V
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mPositionAnimator:Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->clearAnimation()V

    .line 711
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mPositionAnimator:Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;->cancel()V

    .line 713
    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 651
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 652
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 653
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 654
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 655
    return-void
.end method

.method private static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 1083
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .line 716
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getThumbOffset()I
    .locals 3

    .line 965
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbPosition:F

    sub-float/2addr v0, v1

    .local v0, "thumbPosition":F
    goto :goto_0

    .line 968
    .end local v0    # "thumbPosition":F
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbPosition:F

    .line 970
    .restart local v0    # "thumbPosition":F
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getThumbScrollRange()I
    .locals 4

    .line 974
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 975
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTempRect:Landroid/graphics/Rect;

    .line 976
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 979
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 980
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "insets":Landroid/graphics/Rect;
    goto :goto_0

    .line 982
    .end local v0    # "insets":Landroid/graphics/Rect;
    :cond_0
    sget-object v0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 985
    .restart local v0    # "insets":Landroid/graphics/Rect;
    :goto_0
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchWidth:I

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    return v2

    .line 987
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 562
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 563
    return v1

    .line 566
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getThumbOffset()I

    move-result v0

    .line 568
    .local v0, "thumbOffset":I
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 569
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchTop:I

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchSlop:I

    sub-int/2addr v2, v3

    .line 570
    .local v2, "thumbTop":I
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchLeft:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v3

    .line 571
    .local v4, "thumbLeft":I
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v5

    iget v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchSlop:I

    add-int/2addr v3, v5

    .line 572
    .local v3, "thumbRight":I
    iget v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchBottom:I

    add-int/2addr v6, v5

    .line 573
    .local v6, "thumbBottom":I
    int-to-float v5, v4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_1

    int-to-float v5, v2

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    int-to-float v5, v6

    cmpg-float v5, p2, v5

    if-gez v5, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 556
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 558
    .local v0, "transformed":Ljava/lang/CharSequence;
    :goto_0
    new-instance v9, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_1

    invoke-static {v0, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v4, v1

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v9
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 262
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 258
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 259
    goto :goto_0

    .line 254
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 255
    nop

    .line 266
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/ui/widget/SeslSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 267
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 658
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchMode:I

    .line 660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 661
    .local v1, "commitChange":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->isChecked()Z

    move-result v3

    .line 663
    .local v3, "oldState":Z
    if-eqz v1, :cond_5

    .line 664
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 665
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    .line 666
    .local v4, "xvel":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x44fa0000    # 2000.0f

    cmpl-float v5, v5, v6

    const/4 v6, 0x0

    if-gtz v5, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v7, 0x43fa0000    # 500.0f

    cmpl-float v5, v5, v7

    if-gtz v5, :cond_2

    iget v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbPosition:F

    cmpl-float v7, v5, v6

    if-nez v7, :cond_2

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_1

    goto :goto_1

    .line 669
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getTargetCheckedState()Z

    move-result v2

    .local v2, "newState":Z
    goto :goto_3

    .line 667
    .end local v2    # "newState":Z
    :cond_2
    :goto_1
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    cmpg-float v5, v4, v6

    if-gez v5, :cond_4

    goto :goto_2

    :cond_3
    cmpl-float v5, v4, v6

    if-lez v5, :cond_4

    :goto_2
    goto :goto_3

    :cond_4
    move v2, v0

    .line 672
    .end local v4    # "xvel":F
    .restart local v2    # "newState":Z
    :goto_3
    goto :goto_4

    .line 673
    .end local v2    # "newState":Z
    :cond_5
    move v2, v3

    .line 676
    .restart local v2    # "newState":Z
    :goto_4
    if-eq v2, v3, :cond_6

    .line 677
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslSwitch;->playSoundEffect(I)V

    .line 679
    :cond_6
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/widget/SeslSwitch;->setChecked(Z)V

    .line 680
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/widget/SeslSwitch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 681
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 799
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTempRect:Landroid/graphics/Rect;

    .line 800
    .local v0, "padding":Landroid/graphics/Rect;
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchLeft:I

    .line 801
    .local v1, "switchLeft":I
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchTop:I

    .line 802
    .local v2, "switchTop":I
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchRight:I

    .line 803
    .local v3, "switchRight":I
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchBottom:I

    .line 805
    .local v4, "switchBottom":I
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getThumbOffset()I

    move-result v5

    add-int/2addr v5, v1

    .line 808
    .local v5, "thumbInitialLeft":I
    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 809
    invoke-static {v6}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v6

    .local v6, "thumbInsets":Landroid/graphics/Rect;
    goto :goto_0

    .line 811
    .end local v6    # "thumbInsets":Landroid/graphics/Rect;
    :cond_0
    sget-object v6, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 814
    .restart local v6    # "thumbInsets":Landroid/graphics/Rect;
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    .line 815
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 817
    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    .line 819
    move v7, v1

    .line 820
    .local v7, "trackLeft":I
    move v8, v2

    .line 821
    .local v8, "trackTop":I
    move v9, v3

    .line 822
    .local v9, "trackRight":I
    move v10, v4

    .line 823
    .local v10, "trackBottom":I
    if-eqz v6, :cond_4

    .line 824
    iget v11, v6, Landroid/graphics/Rect;->left:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-le v11, v12, :cond_1

    .line 825
    iget v11, v6, Landroid/graphics/Rect;->left:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    add-int/2addr v7, v11

    .line 827
    :cond_1
    iget v11, v6, Landroid/graphics/Rect;->top:I

    iget v12, v0, Landroid/graphics/Rect;->top:I

    if-le v11, v12, :cond_2

    .line 828
    iget v11, v6, Landroid/graphics/Rect;->top:I

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v8, v11

    .line 830
    :cond_2
    iget v11, v6, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    if-le v11, v12, :cond_3

    .line 831
    iget v11, v6, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    sub-int/2addr v9, v11

    .line 833
    :cond_3
    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    if-le v11, v12, :cond_4

    .line 834
    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 837
    :cond_4
    iget-object v11, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 840
    .end local v7    # "trackLeft":I
    .end local v8    # "trackTop":I
    .end local v9    # "trackRight":I
    .end local v10    # "trackBottom":I
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 841
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 843
    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v5, v7

    .line 844
    .local v7, "thumbLeft":I
    iget v8, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbWidth:I

    add-int/2addr v8, v5

    iget v9, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    .line 845
    .local v8, "thumbRight":I
    iget-object v9, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v7, v2, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 847
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 848
    .local v9, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_6

    .line 849
    invoke-static {v9, v7, v2, v8, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 853
    .end local v7    # "thumbLeft":I
    .end local v8    # "thumbRight":I
    .end local v9    # "background":Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 854
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1024
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 1026
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1027
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1031
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 1033
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .line 1002
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1004
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getDrawableState()[I

    move-result-object v0

    .line 1005
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 1007
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1008
    .local v2, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1009
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1012
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1013
    .local v3, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1014
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 1017
    :cond_1
    if-eqz v1, :cond_2

    .line 1018
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->invalidate()V

    .line 1020
    :cond_2
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 941
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 942
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 944
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 945
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 946
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 948
    :cond_1
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 953
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 956
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 957
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 958
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 960
    :cond_1
    return v0
.end method

.method public getShowText()Z
    .locals 1

    .line 476
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mShowText:Z

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .line 447
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .line 315
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .line 306
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbTextPadding:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1042
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1044
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1045
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1049
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1052
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->cancelPositionAnimator()V

    .line 1053
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslSwitch;->setThumbPosition(F)V

    .line 1054
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 993
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 994
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    sget-object v1, Lcom/samsung/android/ui/widget/SeslSwitch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/samsung/android/ui/widget/SeslSwitch;->mergeDrawableStates([I[I)[I

    .line 997
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 858
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 860
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTempRect:Landroid/graphics/Rect;

    .line 861
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 862
    .local v1, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 863
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 865
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 868
    :goto_0
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchTop:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 869
    .local v2, "switchInnerTop":I
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchBottom:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 871
    .local v3, "switchInnerBottom":I
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 872
    .local v4, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_6

    .line 873
    iget-boolean v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSplitTrack:Z

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 874
    invoke-static {v4}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v5

    .line 875
    .local v5, "insets":Landroid/graphics/Rect;
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 876
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 877
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 879
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 880
    .local v6, "saveCount":I
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 881
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 882
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 883
    .end local v5    # "insets":Landroid/graphics/Rect;
    .end local v6    # "saveCount":I
    goto :goto_4

    .line 884
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 885
    .local v5, "overDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 887
    iget v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbPosition:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 888
    .local v6, "alpha":I
    const/16 v7, 0xff

    if-le v6, v7, :cond_3

    .line 889
    const/16 v6, 0xff

    goto :goto_2

    .line 890
    :cond_3
    if-gez v6, :cond_4

    .line 891
    const/4 v6, 0x0

    .line 894
    :cond_4
    :goto_2
    rsub-int v7, v6, 0xff

    .line 895
    .local v7, "r_alpah":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 896
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 897
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    .line 899
    :cond_5
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 900
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 903
    :goto_3
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 904
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 908
    .end local v5    # "overDrawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "alpha":I
    .end local v7    # "r_alpah":I
    :cond_6
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 910
    .local v5, "saveCount2":I
    if-eqz v4, :cond_7

    .line 911
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 914
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getTargetCheckedState()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mOnLayout:Landroid/text/Layout;

    goto :goto_5

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mOffLayout:Landroid/text/Layout;

    .line 915
    .local v6, "switchText":Landroid/text/Layout;
    :goto_5
    if-eqz v6, :cond_b

    .line 916
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getDrawableState()[I

    move-result-object v7

    .line 917
    .local v7, "drawableState":[I
    iget-object v8, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v8, :cond_9

    .line 918
    iget-object v9, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextPaint:Landroid/text/TextPaint;

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 920
    :cond_9
    iget-object v8, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextPaint:Landroid/text/TextPaint;

    iput-object v7, v8, Landroid/text/TextPaint;->drawableState:[I

    .line 923
    if-eqz v4, :cond_a

    .line 924
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 925
    .local v8, "bounds":Landroid/graphics/Rect;
    iget v9, v8, Landroid/graphics/Rect;->left:I

    iget v10, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    .line 926
    .end local v8    # "bounds":Landroid/graphics/Rect;
    .local v9, "cX":I
    goto :goto_6

    .line 927
    .end local v9    # "cX":I
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getWidth()I

    move-result v9

    .line 930
    .restart local v9    # "cX":I
    :goto_6
    div-int/lit8 v8, v9, 0x2

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v8, v10

    .line 931
    .local v8, "left":I
    add-int v10, v2, v3

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    .line 932
    .local v10, "top":I
    int-to-float v11, v8

    int-to-float v12, v10

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 933
    invoke-virtual {v6, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 936
    .end local v7    # "drawableState":[I
    .end local v8    # "left":I
    .end local v9    # "cX":I
    .end local v10    # "top":I
    :cond_b
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 937
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1058
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1059
    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1060
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1064
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1065
    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1067
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, "textOn":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1069
    .local v1, "textOff":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 1070
    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1071
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1072
    .local v3, "oldText":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1073
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1075
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1076
    .local v4, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    .end local v3    # "oldText":Ljava/lang/CharSequence;
    .end local v4    # "newText":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 745
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 747
    const/4 v0, 0x0

    .line 748
    .local v0, "opticalInsetLeft":I
    const/4 v1, 0x0

    .line 749
    .local v1, "opticalInsetRight":I
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 750
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTempRect:Landroid/graphics/Rect;

    .line 751
    .local v2, "trackPadding":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 752
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 754
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 757
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v3

    .line 758
    .local v3, "insets":Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 759
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 764
    .end local v2    # "trackPadding":Landroid/graphics/Rect;
    .end local v3    # "insets":Landroid/graphics/Rect;
    :cond_1
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 765
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    .line 766
    .local v2, "switchLeft":I
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchWidth:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .local v3, "switchRight":I
    goto :goto_1

    .line 768
    .end local v2    # "switchLeft":I
    .end local v3    # "switchRight":I
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v3, v2, v1

    .line 769
    .restart local v3    # "switchRight":I
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchWidth:I

    sub-int v2, v3, v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 774
    .restart local v2    # "switchLeft":I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 776
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getPaddingTop()I

    move-result v5

    .line 777
    .local v5, "switchTop":I
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchHeight:I

    add-int/2addr v4, v5

    .line 778
    .local v4, "switchBottom":I
    goto :goto_2

    .line 786
    .end local v4    # "switchBottom":I
    .end local v5    # "switchTop":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 787
    .restart local v4    # "switchBottom":I
    iget v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchHeight:I

    sub-int v5, v4, v5

    .restart local v5    # "switchTop":I
    goto :goto_2

    .line 781
    .end local v4    # "switchBottom":I
    .end local v5    # "switchTop":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchHeight:I

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    .line 782
    .local v4, "switchTop":I
    add-int/2addr v5, v4

    .line 783
    .local v5, "switchBottom":I
    move v7, v5

    move v5, v4

    move v4, v7

    .line 791
    .local v4, "switchBottom":I
    .local v5, "switchTop":I
    :goto_2
    iput v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchLeft:I

    .line 792
    iput v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchTop:I

    .line 793
    iput v4, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchBottom:I

    .line 794
    iput v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchRight:I

    .line 795
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 481
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mShowText:Z

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mOnLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/widget/SeslSwitch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mOnLayout:Landroid/text/Layout;

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mOffLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/widget/SeslSwitch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mOffLayout:Landroid/text/Layout;

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTempRect:Landroid/graphics/Rect;

    .line 494
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 495
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 496
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 497
    .local v1, "thumbWidth":I
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .local v2, "thumbHeight":I
    goto :goto_0

    .line 499
    .end local v1    # "thumbWidth":I
    .end local v2    # "thumbHeight":I
    :cond_2
    const/4 v1, 0x0

    .line 500
    .restart local v1    # "thumbWidth":I
    const/4 v2, 0x0

    .line 504
    .restart local v2    # "thumbHeight":I
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mShowText:Z

    if-eqz v3, :cond_3

    .line 505
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbTextPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .local v3, "maxTextWidth":I
    goto :goto_1

    .line 507
    .end local v3    # "maxTextWidth":I
    :cond_3
    const/4 v3, 0x0

    .line 510
    .restart local v3    # "maxTextWidth":I
    :goto_1
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbWidth:I

    .line 513
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 514
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 515
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .local v4, "trackHeight":I
    goto :goto_2

    .line 517
    .end local v4    # "trackHeight":I
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 518
    const/4 v4, 0x0

    .line 521
    .restart local v4    # "trackHeight":I
    :goto_2
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 522
    .local v5, "paddingLeft":I
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 523
    .local v6, "paddingRight":I
    iget-object v7, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    .line 524
    invoke-static {v7}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v7

    .line 525
    .local v7, "inset":Landroid/graphics/Rect;
    iget v8, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 526
    iget v8, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 529
    .end local v7    # "inset":Landroid/graphics/Rect;
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07027b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 530
    .local v7, "switchWidth":I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 531
    .local v8, "switchHeight":I
    iput v7, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchWidth:I

    .line 532
    iput v8, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchHeight:I

    .line 534
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 536
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getMeasuredHeight()I

    move-result v9

    .line 537
    .local v9, "measuredHeight":I
    if-ge v9, v8, :cond_6

    .line 538
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getMeasuredWidthAndState()I

    move-result v10

    invoke-virtual {p0, v10, v8}, Lcom/samsung/android/ui/widget/SeslSwitch;->setMeasuredDimension(II)V

    .line 540
    :cond_6
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 544
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 547
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "textOn":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "textOff":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 550
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v2, :cond_1

    .line 551
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 578
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 580
    .local v0, "action":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 608
    :pswitch_0
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchMode:I

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_2

    .line 623
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 624
    .local v1, "x":F
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getThumbScrollRange()I

    move-result v3

    .line 625
    .local v3, "thumbScrollRange":I
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchX:F

    sub-float v4, v1, v4

    .line 627
    .local v4, "thumbScrollOffset":F
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 628
    int-to-float v7, v3

    div-float v7, v4, v7

    .local v7, "dPos":F
    goto :goto_0

    .line 630
    .end local v7    # "dPos":F
    :cond_0
    cmpl-float v7, v4, v6

    if-lez v7, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    const/high16 v7, -0x40800000    # -1.0f

    .line 632
    .restart local v7    # "dPos":F
    :goto_0
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 633
    neg-float v7, v7

    .line 635
    :cond_2
    iget v8, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbPosition:F

    add-float/2addr v8, v7

    invoke-static {v8, v6, v5}, Lcom/samsung/android/ui/widget/SeslSwitch;->constrain(FFF)F

    move-result v5

    .line 636
    .local v5, "newPos":F
    iget v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbPosition:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_3

    .line 637
    iput v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchX:F

    .line 638
    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/widget/SeslSwitch;->setThumbPosition(F)V

    .line 640
    :cond_3
    return v2

    .line 610
    .end local v1    # "x":F
    .end local v3    # "thumbScrollRange":I
    .end local v4    # "thumbScrollOffset":F
    .end local v5    # "newPos":F
    .end local v7    # "dPos":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 611
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 612
    .local v4, "y":F
    iget v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchX:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_4

    iget v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchY:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    .line 613
    :cond_4
    iput v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchMode:I

    .line 614
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 615
    iput v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchX:F

    .line 616
    iput v4, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchY:F

    .line 617
    return v2

    .line 594
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_3
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchMode:I

    const/4 v4, 0x0

    if-ne v3, v1, :cond_8

    .line 595
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v3, v5, :cond_7

    if-ne v0, v2, :cond_7

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchMode:I

    if-eq v3, v1, :cond_5

    if-ne v3, v2, :cond_7

    .line 596
    :cond_5
    const-class v1, Landroid/view/HapticFeedbackConstants;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v3, v5, :cond_6

    const-string v3, "hidden_semGetVibrationIndex"

    goto :goto_1

    :cond_6
    const-string v3, "semGetVibrationIndex"

    :goto_1
    new-array v5, v2, [Ljava/lang/Object;

    const/16 v6, 0x1b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v3, v5}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslSwitch;->performHapticFeedback(I)Z

    .line 598
    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/widget/SeslSwitch;->stopDrag(Landroid/view/MotionEvent;)V

    .line 599
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 600
    return v2

    .line 602
    :cond_8
    iput v4, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchMode:I

    .line 603
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 604
    goto :goto_2

    .line 582
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 583
    .restart local v1    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 584
    .local v3, "y":F
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/ui/widget/SeslSwitch;->hitThumb(FF)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 585
    iput v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchMode:I

    .line 586
    iput v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchX:F

    .line 587
    iput v3, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTouchY:F

    .line 647
    .end local v1    # "x":F
    .end local v3    # "y":F
    :cond_9
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public seslSetTrackStrokeColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 1088
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f0901ca

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1089
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .line 731
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 733
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->isChecked()Z

    move-result v0

    .line 735
    .local v0, "checked2":Z
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    invoke-direct {p0, v0}, Lcom/samsung/android/ui/widget/SeslSwitch;->animateThumbToCheckedState(Z)V

    goto :goto_1

    .line 738
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->cancelPositionAnimator()V

    .line 739
    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslSwitch;->setThumbPosition(F)V

    .line 741
    :goto_1
    return-void
.end method

.method public setShowText(Z)V
    .locals 1
    .param p1, "showText"    # Z

    .line 469
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mShowText:Z

    if-eq v0, p1, :cond_0

    .line 470
    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mShowText:Z

    .line 471
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->requestLayout()V

    .line 473
    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .line 442
    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSplitTrack:Z

    .line 443
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->invalidate()V

    .line 444
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .param p1, "pixels"    # I

    .line 310
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchMinWidth:I

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->requestLayout()V

    .line 312
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .line 301
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchPadding:I

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->requestLayout()V

    .line 303
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .line 214
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 219
    .local v0, "appearance":Landroidx/appcompat/widget/TintTypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 220
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 221
    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 226
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 227
    .local v3, "ts":I
    if-eqz v3, :cond_1

    .line 228
    int-to-float v4, v3

    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 229
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->requestLayout()V

    .line 235
    :cond_1
    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 236
    .local v4, "typefaceIndex":I
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v5

    .line 238
    .local v5, "styleIndex":I
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/ui/widget/SeslSwitch;->setSwitchTypefaceByIndex(II)V

    .line 240
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 241
    .local v2, "allCaps":Z
    if-eqz v2, :cond_2

    .line 242
    new-instance v6, Landroidx/appcompat/text/AllCapsTransformationMethod;

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/appcompat/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    goto :goto_1

    .line 244
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    .line 247
    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 248
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 292
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->requestLayout()V

    .line 296
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->invalidate()V

    .line 298
    :cond_2
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 7
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .line 271
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    .line 272
    if-nez p1, :cond_0

    .line 273
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    .local v2, "tf2":Landroid/graphics/Typeface;
    goto :goto_0

    .line 275
    .end local v2    # "tf2":Landroid/graphics/Typeface;
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 278
    .restart local v2    # "tf2":Landroid/graphics/Typeface;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/widget/SeslSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 280
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    .line 281
    .local v3, "typefaceStyle":I
    :goto_1
    not-int v4, v3

    and-int/2addr v4, p2

    .line 282
    .local v4, "need":I
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 283
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 284
    .end local v3    # "typefaceStyle":I
    .end local v4    # "need":I
    goto :goto_2

    .line 285
    .end local v2    # "tf2":Landroid/graphics/Typeface;
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 286
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 287
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 289
    :goto_2
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .line 464
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextOff:Ljava/lang/CharSequence;

    .line 465
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->requestLayout()V

    .line 466
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .line 455
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTextOn:Ljava/lang/CharSequence;

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->requestLayout()V

    .line 457
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 387
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 388
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 390
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 391
    if-eqz p1, :cond_1

    .line 392
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->requestLayout()V

    .line 395
    return-void
.end method

.method setThumbPosition(F)V
    .locals 0
    .param p1, "position"    # F

    .line 720
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbPosition:F

    .line 721
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->invalidate()V

    .line 722
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .line 319
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbTextPadding:I

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->requestLayout()V

    .line 321
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 406
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasThumbTint:Z

    .line 409
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->applyThumbTint()V

    .line 410
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 417
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasThumbTintMode:Z

    .line 420
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->applyThumbTint()V

    .line 421
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 328
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 329
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 331
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 332
    if-eqz p1, :cond_1

    .line 333
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->requestLayout()V

    .line 336
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslSwitch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 347
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasTrackTint:Z

    .line 350
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->applyTrackTint()V

    .line 351
    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 358
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mHasTrackTintMode:Z

    .line 361
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->applyTrackTint()V

    .line 362
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 726
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslSwitch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslSwitch;->setChecked(Z)V

    .line 727
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1037
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
