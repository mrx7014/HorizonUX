.class public Lcom/samsung/android/ui/widget/SeslProgressBar;
.super Landroid/view/View;
.source "SeslProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;,
        Lcom/samsung/android/ui/widget/SeslProgressBar$StateListDrawableCompat;,
        Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;,
        Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;,
        Lcom/samsung/android/ui/widget/SeslProgressBar$AccessibilityEventSender;,
        Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;
    }
.end annotation


# static fields
.field public static final PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public final VISUAL_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/samsung/android/ui/widget/SeslProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field public mAccessibilityEventSender:Lcom/samsung/android/ui/widget/SeslProgressBar$AccessibilityEventSender;

.field public mAggregatedIsVisible:Z

.field public mAnimation:Landroid/view/animation/AlphaAnimation;

.field public mAttached:Z

.field public mBehavior:I

.field public mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field public mCurrentMode:I

.field public mDensity:F

.field public mDuration:I

.field public mHasAnimation:Z

.field public mInDrawing:Z

.field public mIndeterminate:Z

.field public mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field public mMax:I

.field public mMaxHeight:I

.field public mMaxInitialized:Z

.field public mMaxWidth:I

.field public mMin:I

.field public mMinHeight:I

.field public mMinInitialized:Z

.field public mMinWidth:I

.field public mMirrorForRtl:Z

.field public mNoInvalidate:Z

.field public mOnlyIndeterminate:Z

.field public mProgress:I

.field public mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field public mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

.field public final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field public mRefreshIsPosted:Z

.field public mRefreshProgressRunnable:Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;

.field public mSampleWidth:I

.field public mSecondaryProgress:I

.field public mShouldStartAnimationDrawable:Z

.field public mTransformation:Landroid/view/animation/Transformation;

.field public mUiThreadId:J

.field public mVisualProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/ui/widget/SeslProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;

    .line 110
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 114
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "var5":Z
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    .line 126
    iput v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mSampleWidth:I

    .line 127
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMirrorForRtl:Z

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    .line 129
    new-instance v2, Lcom/samsung/android/ui/widget/SeslProgressBar$1;

    const-string v3, "visual_progress"

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/ui/widget/SeslProgressBar$1;-><init>(Lcom/samsung/android/ui/widget/SeslProgressBar;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mUiThreadId:J

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->initProgressBar()V

    .line 141
    sget-object v2, Lcom/mesalabs/ten/update/R$styleable;->SeslProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 142
    .local v2, "var6":Landroid/content/res/TypedArray;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    .line 143
    sget-object v5, Lcom/mesalabs/ten/update/R$styleable;->SeslProgressBar:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/ui/widget/SeslProgressBar;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 146
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mNoInvalidate:Z

    .line 147
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 148
    .local v4, "var7":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    .line 149
    invoke-static {v4}, Lcom/samsung/android/ui/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_2
    :goto_0
    const/16 v5, 0x9

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mDuration:I

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mDuration:I

    .line 157
    const/16 v5, 0xb

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinWidth:I

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinWidth:I

    .line 158
    iget v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual {v2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxWidth:I

    .line 159
    const/16 v5, 0xc

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinHeight:I

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinHeight:I

    .line 160
    iget v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxHeight:I

    .line 161
    const/16 v5, 0xa

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mBehavior:I

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mBehavior:I

    .line 162
    const/16 v5, 0xd

    const v6, 0x10a000b

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 163
    if-lez p3, :cond_3

    .line 164
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 167
    :cond_3
    const/16 v5, 0x17

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMin:I

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setMin(I)V

    .line 168
    const/4 v5, 0x2

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMax:I

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setMax(I)V

    .line 169
    const/4 v5, 0x3

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgress:I

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgress(I)V

    .line 170
    const/4 v5, 0x4

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mSecondaryProgress:I

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setSecondaryProgress(I)V

    .line 171
    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 172
    if-eqz v4, :cond_5

    .line 173
    invoke-static {v4}, Lcom/samsung/android/ui/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 174
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    :cond_5
    :goto_1
    const/4 v5, 0x6

    iget-boolean v6, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    .line 181
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mNoInvalidate:Z

    .line 182
    if-nez v5, :cond_6

    const/4 v1, 0x5

    iget-boolean v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminate:Z

    invoke-virtual {v2, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 183
    :cond_6
    const/4 v0, 0x1

    .line 186
    :cond_7
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setIndeterminate(Z)V

    .line 187
    const/16 v1, 0xe

    iget-boolean v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMirrorForRtl:Z

    invoke-virtual {v2, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMirrorForRtl:Z

    .line 188
    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eqz v5, :cond_9

    .line 189
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v5, :cond_8

    .line 190
    new-instance v5, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v5}, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 193
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    move-object v8, v6

    check-cast v8, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v8}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, v5, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 194
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v3, v1, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 197
    :cond_9
    const/16 v1, 0xf

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 198
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v5, :cond_a

    .line 199
    new-instance v5, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v5}, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 202
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v5, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 203
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v3, v1, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 206
    :cond_b
    const/16 v1, 0x12

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 207
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v5, :cond_c

    .line 208
    new-instance v5, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v5}, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 211
    :cond_c
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    move-object v8, v6

    check-cast v8, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v8}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, v5, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 212
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v3, v1, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 215
    :cond_d
    const/16 v1, 0x11

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 216
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v5, :cond_e

    .line 217
    new-instance v5, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v5}, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 220
    :cond_e
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v5, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 221
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v3, v1, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 224
    :cond_f
    const/16 v1, 0x14

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 225
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v5, :cond_10

    .line 226
    new-instance v5, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v5}, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 229
    :cond_10
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    move-object v8, v6

    check-cast v8, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v8}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, v5, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 230
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v3, v1, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 233
    :cond_11
    const/16 v1, 0x13

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 234
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v5, :cond_12

    .line 235
    new-instance v5, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v5}, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 238
    :cond_12
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v5, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 239
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v3, v1, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 242
    :cond_13
    const/16 v1, 0x16

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 243
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v5, :cond_14

    .line 244
    new-instance v5, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v5}, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 247
    :cond_14
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    check-cast v6, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v6}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, v5, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 248
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v3, v1, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 251
    :cond_15
    const/16 v1, 0x15

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 252
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v5, :cond_16

    .line 253
    new-instance v5, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v5}, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 256
    :cond_16
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v5, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 257
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v3, v1, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 260
    :cond_17
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->applyProgressTints()V

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->applyIndeterminateTint()V

    .line 263
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_18

    .line 264
    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 267
    :cond_18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mDensity:F

    .line 268
    return-void
.end method

.method public static constrain(III)I
    .locals 1
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 2394
    if-ge p0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static needsTileify(Landroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p0, "var0"    # Landroid/graphics/drawable/Drawable;

    .line 273
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 274
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 275
    .local v0, "var4":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v3

    .line 277
    .local v3, "var1":I
    const/4 v4, 0x0

    .local v4, "var2":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 278
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/ui/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 279
    return v2

    .line 277
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    :cond_1
    return v1

    .line 284
    .end local v0    # "var4":Landroid/graphics/drawable/LayerDrawable;
    .end local v3    # "var1":I
    .end local v4    # "var2":I
    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_5

    .line 285
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 286
    .local v0, "var3":Landroid/graphics/drawable/StateListDrawable;
    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar$StateListDrawableCompat;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v3

    .line 288
    .restart local v3    # "var1":I
    const/4 v4, 0x0

    .restart local v4    # "var2":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 289
    invoke-static {v0, v4}, Lcom/samsung/android/ui/widget/SeslProgressBar$StateListDrawableCompat;->getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 290
    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 291
    return v2

    .line 288
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 295
    :cond_4
    return v1

    .line 297
    .end local v0    # "var3":Landroid/graphics/drawable/StateListDrawable;
    .end local v3    # "var1":I
    .end local v4    # "var2":I
    :cond_5
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    return v0
.end method


# virtual methods
.method public final applyIndeterminateTint()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 304
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_3

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 306
    iget-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 310
    :cond_1
    iget-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 315
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 320
    .end local v0    # "var1":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    :cond_3
    return-void
.end method

.method public final applyPrimaryProgressTint()V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 324
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    iget-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_3

    .line 325
    :cond_0
    const v1, 0x7f090190

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 326
    .local v1, "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 327
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 328
    .local v2, "var2":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    iget-boolean v3, v2, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-eqz v3, :cond_1

    .line 329
    iget-object v3, v2, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    invoke-static {v1, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 332
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 333
    iget-boolean v3, v2, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v3, :cond_2

    .line 334
    iget-object v3, v2, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 337
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 338
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 343
    .end local v1    # "var3":Landroid/graphics/drawable/Drawable;
    .end local v2    # "var2":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    :cond_3
    return-void
.end method

.method public final applyProgressBackgroundTint()V
    .locals 4

    .line 346
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 347
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    iget-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_3

    .line 348
    :cond_0
    const v1, 0x7f090052

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 349
    .local v1, "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 350
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 351
    .local v2, "var2":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    iget-boolean v3, v2, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-eqz v3, :cond_1

    .line 352
    iget-object v3, v2, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    invoke-static {v1, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 355
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 356
    iget-boolean v3, v2, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v3, :cond_2

    .line 357
    iget-object v3, v2, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 360
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 366
    .end local v1    # "var3":Landroid/graphics/drawable/Drawable;
    .end local v2    # "var2":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    :cond_3
    return-void
.end method

.method public final applyProgressTints()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->applyPrimaryProgressTint()V

    .line 371
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->applyProgressBackgroundTint()V

    .line 372
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->applySecondaryProgressTint()V

    .line 375
    :cond_0
    return-void
.end method

.method public final applySecondaryProgressTint()V
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 379
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    iget-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_3

    .line 380
    :cond_0
    const v1, 0x7f0901b3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 381
    .local v1, "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 382
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 383
    .local v2, "var2":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    iget-boolean v3, v2, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-eqz v3, :cond_1

    .line 384
    iget-object v3, v2, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    invoke-static {v1, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 387
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 388
    iget-boolean v3, v2, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v3, :cond_2

    .line 389
    iget-object v3, v2, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 392
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 393
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 398
    .end local v1    # "var3":Landroid/graphics/drawable/Drawable;
    .end local v2    # "var2":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    :cond_3
    return-void
.end method

.method public final doRefreshProgress(IIZZZ)V
    .locals 15
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Z
    .param p4, "var4"    # Z
    .param p5, "var5"    # Z

    .line 401
    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    .line 408
    :try_start_1
    iget v0, v1, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMax:I

    iget v4, v1, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMin:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    sub-int v5, v0, v4

    .line 413
    .local v5, "var6":I
    nop

    .line 416
    if-lez v5, :cond_0

    .line 418
    sub-int v0, v3, v4

    int-to-float v0, v0

    int-to-float v4, v5

    div-float/2addr v0, v4

    .line 423
    .local v0, "var7":F
    move v4, v0

    goto :goto_0

    .line 425
    .end local v0    # "var7":F
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    .line 432
    .local v4, "var7":F
    :goto_0
    const v0, 0x7f090190

    if-ne v2, v0, :cond_1

    .line 433
    nop

    .line 445
    const/4 v0, 0x1

    move v6, v0

    .local v0, "var394":Z
    goto :goto_1

    .line 439
    .end local v0    # "var394":Z
    :cond_1
    nop

    .line 441
    const/4 v0, 0x0

    .line 442
    .restart local v0    # "var394":Z
    move v6, v0

    .line 450
    .end local v0    # "var394":Z
    .local v6, "var394":Z
    :goto_1
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    move-object v7, v0

    .line 455
    .local v7, "var8":Landroid/graphics/drawable/Drawable;
    nop

    .line 457
    if-eqz v7, :cond_e

    .line 459
    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr v0, v4

    float-to-int v8, v0

    .line 464
    .local v8, "var9":I
    :try_start_3
    instance-of v0, v7, Landroid/graphics/drawable/LayerDrawable;

    const/16 v9, 0x13

    if-eqz v0, :cond_5

    .line 465
    move-object v0, v7

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    move-object v10, v0

    .line 466
    .local v10, "var10":Landroid/graphics/drawable/Drawable;
    nop

    .line 585
    if-eqz v10, :cond_3

    .line 587
    :try_start_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v9, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->canResolveLayoutDirection()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {v10, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 594
    :cond_2
    goto :goto_2

    .line 590
    :catchall_0
    move-exception v0

    .line 591
    .local v0, "var384":Ljava/lang/Throwable;
    move-object v9, v0

    .line 592
    .local v9, "var10000":Ljava/lang/Throwable;
    const/4 v11, 0x0

    .line 593
    .local v11, "var10001":Z
    move/from16 v8, p3

    goto/16 :goto_9

    .line 597
    .end local v0    # "var384":Ljava/lang/Throwable;
    .end local v9    # "var10000":Ljava/lang/Throwable;
    .end local v11    # "var10001":Z
    :cond_3
    :goto_2
    if-eqz v10, :cond_4

    .line 598
    move-object v7, v10

    .line 602
    :cond_4
    :try_start_5
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 607
    nop

    .line 608
    .end local v8    # "var9":I
    .end local v10    # "var10":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_6

    .line 603
    .restart local v8    # "var9":I
    .restart local v10    # "var10":Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 604
    .local v0, "var383":Ljava/lang/Throwable;
    nop

    .line 605
    .restart local v9    # "var10000":Ljava/lang/Throwable;
    const/4 v11, 0x0

    .line 606
    .restart local v11    # "var10001":Z
    move/from16 v8, p3

    goto/16 :goto_9

    .line 472
    .end local v0    # "var383":Ljava/lang/Throwable;
    .end local v9    # "var10000":Ljava/lang/Throwable;
    .end local v10    # "var10":Landroid/graphics/drawable/Drawable;
    .end local v11    # "var10001":Z
    :cond_5
    nop

    .line 477
    :try_start_6
    instance-of v0, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_d

    .line 478
    move-object v0, v7

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar$StateListDrawableCompat;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    move v10, v0

    .line 479
    .local v10, "var11":I
    nop

    .line 497
    const/4 v0, 0x0

    move v11, v0

    .line 500
    .local v11, "var12":I
    :goto_3
    if-lt v11, v10, :cond_6

    .line 501
    goto/16 :goto_6

    .line 505
    :cond_6
    :try_start_7
    move-object v0, v7

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-static {v0, v11}, Lcom/samsung/android/ui/widget/SeslProgressBar$StateListDrawableCompat;->getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object v12, v0

    .line 510
    .local v12, "var10":Landroid/graphics/drawable/Drawable;
    nop

    .line 512
    if-nez v12, :cond_7

    .line 513
    return-void

    .line 520
    :cond_7
    :try_start_8
    instance-of v0, v12, Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_8

    .line 521
    nop

    .line 566
    const/4 v0, 0x0

    .end local v12    # "var10":Landroid/graphics/drawable/Drawable;
    .local v0, "var10":Landroid/graphics/drawable/Drawable;
    goto :goto_4

    .line 524
    .end local v0    # "var10":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "var10":Landroid/graphics/drawable/Drawable;
    :cond_8
    move-object v0, v12

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v13, v0

    .line 529
    .local v13, "var13":Landroid/graphics/drawable/Drawable;
    nop

    .line 531
    move-object v0, v13

    .line 532
    .end local v12    # "var10":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "var10":Landroid/graphics/drawable/Drawable;
    if-nez v13, :cond_9

    .line 533
    goto :goto_4

    .line 536
    :cond_9
    move-object v12, v13

    .line 539
    .end local v0    # "var10":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "var10":Landroid/graphics/drawable/Drawable;
    :try_start_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-gt v0, v9, :cond_a

    .line 540
    move-object v0, v12

    goto :goto_4

    .line 546
    :cond_a
    nop

    .line 548
    move-object v12, v13

    .line 551
    :try_start_a
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->canResolveLayoutDirection()Z

    move-result v0

    if-nez v0, :cond_b

    .line 552
    move-object v0, v12

    goto :goto_4

    .line 555
    :cond_b
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {v13, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 560
    nop

    .line 562
    move-object v0, v13

    .line 563
    .end local v12    # "var10":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "var10":Landroid/graphics/drawable/Drawable;
    nop

    .line 569
    .end local v13    # "var13":Landroid/graphics/drawable/Drawable;
    :goto_4
    if-nez v0, :cond_c

    .line 570
    move-object v0, v7

    move-object v12, v0

    goto :goto_5

    .line 569
    :cond_c
    move-object v12, v0

    .line 574
    .end local v0    # "var10":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "var10":Landroid/graphics/drawable/Drawable;
    :goto_5
    :try_start_b
    invoke-virtual {v12, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 579
    nop

    .line 581
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 575
    :catchall_2
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 576
    .local v0, "var381":Ljava/lang/Throwable;
    nop

    .line 577
    .restart local v9    # "var10000":Ljava/lang/Throwable;
    const/4 v13, 0x0

    .line 578
    .local v13, "var10001":Z
    move/from16 v8, p3

    goto/16 :goto_9

    .line 556
    .end local v0    # "var381":Ljava/lang/Throwable;
    .end local v9    # "var10000":Ljava/lang/Throwable;
    .local v13, "var13":Landroid/graphics/drawable/Drawable;
    :catchall_3
    move-exception v0

    .line 557
    .local v0, "var385":Ljava/lang/Throwable;
    move-object v9, v0

    .line 558
    .restart local v9    # "var10000":Ljava/lang/Throwable;
    const/4 v14, 0x0

    .line 559
    .local v14, "var10001":Z
    move/from16 v8, p3

    goto/16 :goto_9

    .line 542
    .end local v0    # "var385":Ljava/lang/Throwable;
    .end local v9    # "var10000":Ljava/lang/Throwable;
    .end local v14    # "var10001":Z
    :catchall_4
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 543
    .local v0, "var386":Ljava/lang/Throwable;
    nop

    .line 544
    .restart local v9    # "var10000":Ljava/lang/Throwable;
    const/4 v14, 0x0

    .line 545
    .restart local v14    # "var10001":Z
    move/from16 v8, p3

    goto/16 :goto_9

    .line 525
    .end local v0    # "var386":Ljava/lang/Throwable;
    .end local v9    # "var10000":Ljava/lang/Throwable;
    .end local v13    # "var13":Landroid/graphics/drawable/Drawable;
    .end local v14    # "var10001":Z
    :catchall_5
    move-exception v0

    .line 526
    .local v0, "var387":Ljava/lang/Throwable;
    move-object v9, v0

    .line 527
    .restart local v9    # "var10000":Ljava/lang/Throwable;
    const/4 v13, 0x0

    .line 528
    .local v13, "var10001":Z
    move/from16 v8, p3

    goto/16 :goto_9

    .line 506
    .end local v0    # "var387":Ljava/lang/Throwable;
    .end local v9    # "var10000":Ljava/lang/Throwable;
    .end local v12    # "var10":Landroid/graphics/drawable/Drawable;
    .end local v13    # "var10001":Z
    :catchall_6
    move-exception v0

    .line 507
    .local v0, "var382":Ljava/lang/Throwable;
    move-object v9, v0

    .line 508
    .restart local v9    # "var10000":Ljava/lang/Throwable;
    const/4 v12, 0x0

    .line 509
    .local v12, "var10001":Z
    move/from16 v8, p3

    goto/16 :goto_9

    .line 485
    .end local v0    # "var382":Ljava/lang/Throwable;
    .end local v9    # "var10000":Ljava/lang/Throwable;
    .end local v10    # "var11":I
    .end local v11    # "var12":I
    .end local v12    # "var10001":Z
    :cond_d
    nop

    .line 488
    :try_start_c
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 489
    goto :goto_6

    .line 490
    :catchall_7
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 491
    .local v0, "var380":Ljava/lang/Throwable;
    nop

    .line 492
    .restart local v9    # "var10000":Ljava/lang/Throwable;
    const/4 v10, 0x0

    .line 493
    .local v10, "var10001":Z
    move/from16 v8, p3

    goto/16 :goto_9

    .line 481
    .end local v0    # "var380":Ljava/lang/Throwable;
    .end local v9    # "var10000":Ljava/lang/Throwable;
    .end local v10    # "var10001":Z
    :catchall_8
    move-exception v0

    .line 482
    .local v0, "var388":Ljava/lang/Throwable;
    move-object v9, v0

    .line 483
    .restart local v9    # "var10000":Ljava/lang/Throwable;
    const/4 v10, 0x0

    .line 484
    .restart local v10    # "var10001":Z
    move/from16 v8, p3

    goto/16 :goto_9

    .line 468
    .end local v0    # "var388":Ljava/lang/Throwable;
    .end local v9    # "var10000":Ljava/lang/Throwable;
    .end local v10    # "var10001":Z
    :catchall_9
    move-exception v0

    .line 469
    .local v0, "var389":Ljava/lang/Throwable;
    move-object v9, v0

    .line 470
    .restart local v9    # "var10000":Ljava/lang/Throwable;
    const/4 v10, 0x0

    .line 471
    .restart local v10    # "var10001":Z
    move/from16 v8, p3

    goto/16 :goto_9

    .line 611
    .end local v0    # "var389":Ljava/lang/Throwable;
    .end local v8    # "var9":I
    .end local v9    # "var10000":Ljava/lang/Throwable;
    .end local v10    # "var10001":Z
    :cond_e
    :try_start_d
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->invalidate()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    .line 616
    nop

    .line 619
    :goto_6
    if-eqz v6, :cond_10

    if-eqz p5, :cond_10

    .line 622
    :try_start_e
    iget-object v0, v1, Lcom/samsung/android/ui/widget/SeslProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    const/4 v8, 0x1

    new-array v9, v8, [F

    const/4 v10, 0x0

    aput v4, v9, v10

    invoke-static {p0, v0, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object v9, v0

    .line 623
    .local v9, "var395":Landroid/animation/ObjectAnimator;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-le v0, v10, :cond_f

    .line 624
    invoke-virtual {v9, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 630
    :cond_f
    nop

    .line 633
    const-wide/16 v10, 0x50

    :try_start_f
    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 634
    sget-object v0, Lcom/samsung/android/ui/widget/SeslProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 635
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 640
    nop

    .line 641
    .end local v9    # "var395":Landroid/animation/ObjectAnimator;
    goto :goto_7

    .line 636
    .restart local v9    # "var395":Landroid/animation/ObjectAnimator;
    :catchall_a
    move-exception v0

    .line 637
    .local v0, "var377":Ljava/lang/Throwable;
    move-object v8, v0

    .line 638
    .local v8, "var10000":Ljava/lang/Throwable;
    const/4 v10, 0x0

    .line 639
    .restart local v10    # "var10001":Z
    move-object v9, v8

    move/from16 v8, p3

    goto :goto_9

    .line 626
    .end local v0    # "var377":Ljava/lang/Throwable;
    .end local v8    # "var10000":Ljava/lang/Throwable;
    .end local v9    # "var395":Landroid/animation/ObjectAnimator;
    .end local v10    # "var10001":Z
    :catchall_b
    move-exception v0

    .line 627
    .local v0, "var378":Ljava/lang/Throwable;
    move-object v9, v0

    .line 628
    .local v9, "var10000":Ljava/lang/Throwable;
    const/4 v8, 0x0

    .line 629
    .local v8, "var10001":Z
    move/from16 v8, p3

    goto :goto_9

    .line 643
    .end local v0    # "var378":Ljava/lang/Throwable;
    .end local v8    # "var10001":Z
    .end local v9    # "var10000":Ljava/lang/Throwable;
    :cond_10
    :try_start_10
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setVisualProgress(IF)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    .line 648
    nop

    .line 651
    :goto_7
    if-eqz v6, :cond_12

    if-nez p4, :cond_11

    move/from16 v8, p3

    goto :goto_8

    .line 657
    :cond_11
    move/from16 v8, p3

    :try_start_11
    invoke-virtual {p0, v4, v8, v3}, Lcom/samsung/android/ui/widget/SeslProgressBar;->onProgressRefresh(FZI)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    .line 658
    return-void

    .line 659
    :catchall_c
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 660
    .local v0, "var375":Ljava/lang/Throwable;
    nop

    .line 661
    .restart local v9    # "var10000":Ljava/lang/Throwable;
    const/4 v10, 0x0

    .line 662
    .restart local v10    # "var10001":Z
    goto :goto_9

    .line 651
    .end local v0    # "var375":Ljava/lang/Throwable;
    .end local v9    # "var10000":Ljava/lang/Throwable;
    .end local v10    # "var10001":Z
    :cond_12
    move/from16 v8, p3

    .line 652
    :goto_8
    return-void

    .line 644
    :catchall_d
    move-exception v0

    move/from16 v8, p3

    move-object v9, v0

    move-object v0, v9

    .line 645
    .local v0, "var376":Ljava/lang/Throwable;
    nop

    .line 646
    .restart local v9    # "var10000":Ljava/lang/Throwable;
    const/4 v10, 0x0

    .line 647
    .restart local v10    # "var10001":Z
    goto :goto_9

    .line 612
    .end local v0    # "var376":Ljava/lang/Throwable;
    .end local v9    # "var10000":Ljava/lang/Throwable;
    .end local v10    # "var10001":Z
    :catchall_e
    move-exception v0

    move/from16 v8, p3

    move-object v9, v0

    move-object v0, v9

    .line 613
    .local v0, "var379":Ljava/lang/Throwable;
    nop

    .line 614
    .restart local v9    # "var10000":Ljava/lang/Throwable;
    const/4 v10, 0x0

    .line 615
    .restart local v10    # "var10001":Z
    goto :goto_9

    .line 451
    .end local v0    # "var379":Ljava/lang/Throwable;
    .end local v7    # "var8":Landroid/graphics/drawable/Drawable;
    .end local v9    # "var10000":Ljava/lang/Throwable;
    .end local v10    # "var10001":Z
    :catchall_f
    move-exception v0

    move/from16 v8, p3

    move-object v7, v0

    move-object v0, v7

    .line 452
    .local v0, "var390":Ljava/lang/Throwable;
    move-object v9, v0

    .line 453
    .restart local v9    # "var10000":Ljava/lang/Throwable;
    const/4 v7, 0x0

    .line 454
    .local v7, "var10001":Z
    goto :goto_9

    .line 409
    .end local v0    # "var390":Ljava/lang/Throwable;
    .end local v4    # "var7":F
    .end local v5    # "var6":I
    .end local v6    # "var394":Z
    .end local v7    # "var10001":Z
    .end local v9    # "var10000":Ljava/lang/Throwable;
    :catchall_10
    move-exception v0

    move/from16 v8, p3

    .line 410
    .local v0, "var393":Ljava/lang/Throwable;
    move-object v9, v0

    .line 411
    .restart local v9    # "var10000":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 412
    .local v4, "var10001":Z
    nop

    .line 666
    .end local v0    # "var393":Ljava/lang/Throwable;
    .end local v4    # "var10001":Z
    :goto_9
    move-object v4, v9

    .line 668
    .local v4, "var396":Ljava/lang/Throwable;
    nop

    .end local v9    # "var10000":Ljava/lang/Throwable;
    .end local p1    # "var1":I
    .end local p2    # "var2":I
    .end local p3    # "var3":Z
    .end local p4    # "var4":Z
    .end local p5    # "var5":Z
    :try_start_12
    throw v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    .line 669
    .restart local v9    # "var10000":Ljava/lang/Throwable;
    .restart local p1    # "var1":I
    .restart local p2    # "var2":I
    .restart local p3    # "var3":Z
    .restart local p4    # "var4":Z
    .restart local p5    # "var5":Z
    :catchall_11
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 670
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 672
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void

    .line 401
    .end local v4    # "var396":Ljava/lang/Throwable;
    .end local v9    # "var10000":Ljava/lang/Throwable;
    :catchall_12
    move-exception v0

    move/from16 v8, p3

    :goto_a
    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    throw v0

    :catchall_13
    move-exception v0

    goto :goto_a
.end method

.method public drawTrack(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 676
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 677
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 678
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 679
    .local v1, "var3":I
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 681
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 686
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getDrawingTime()J

    move-result-wide v2

    .line 687
    .local v2, "var4":J
    iget-boolean v4, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mHasAnimation:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 688
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 689
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v4

    .line 692
    .local v4, "var6":F
    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mInDrawing:Z

    .line 693
    const v6, 0x461c4000    # 10000.0f

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    iput-boolean v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mInDrawing:Z

    .line 696
    nop

    .line 698
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_1

    .line 695
    :catchall_0
    move-exception v6

    iput-boolean v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mInDrawing:Z

    .line 696
    throw v6

    .line 701
    .end local v4    # "var6":F
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 702
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 703
    iget-boolean v4, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v4, :cond_2

    instance-of v4, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_2

    .line 704
    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/Animatable;

    invoke-interface {v4}, Landroid/graphics/drawable/Animatable;->start()V

    .line 705
    iput-boolean v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    .line 709
    .end local v1    # "var3":I
    .end local v2    # "var4":J
    :cond_2
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 712
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 713
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 714
    .local v0, "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 715
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 719
    if-eqz v0, :cond_1

    .line 720
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 723
    :cond_1
    return-void
.end method

.method public drawableStateChanged()V
    .locals 0

    .line 726
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 727
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->updateDrawableState()V

    .line 728
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 731
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 745
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    if-eqz v0, :cond_0

    .line 746
    iget-object v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .local v1, "var2":Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 748
    .end local v1    # "var2":Landroid/content/res/ColorStateList;
    :cond_0
    const/4 v1, 0x0

    .line 751
    .restart local v1    # "var2":Landroid/content/res/ColorStateList;
    :goto_0
    return-object v1
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 757
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    if-eqz v0, :cond_0

    .line 758
    iget-object v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .local v1, "var2":Landroid/graphics/PorterDuff$Mode;
    goto :goto_0

    .line 760
    .end local v1    # "var2":Landroid/graphics/PorterDuff$Mode;
    :cond_0
    const/4 v1, 0x0

    .line 763
    .restart local v1    # "var2":Landroid/graphics/PorterDuff$Mode;
    :goto_0
    return-object v1
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .line 774
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 778
    :try_start_1
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMax:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    .local v0, "var1":I
    nop

    .line 783
    return v0

    .line 780
    .end local v0    # "var1":I
    :catchall_0
    move-exception v0

    .line 781
    throw v0

    .line 774
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 787
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 791
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxWidth:I

    return v0
.end method

.method public getMin()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .line 798
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 802
    :try_start_1
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMin:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 805
    .local v0, "var1":I
    nop

    .line 807
    return v0

    .line 804
    .end local v0    # "var1":I
    :catchall_0
    move-exception v0

    .line 805
    throw v0

    .line 798
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 811
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 815
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinWidth:I

    return v0
.end method

.method public getMirrorForRtl()Z
    .locals 1

    .line 819
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMirrorForRtl:Z

    return v0
.end method

.method public getPaddingLeft()I
    .locals 2

    .line 823
    const-class v0, Landroid/view/View;

    const-string v1, "mPaddingLeft"

    invoke-static {v0, p0, v1}, Lcom/mesalabs/cerberus/utils/Utils;->genericGetField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPaddingRight()I
    .locals 2

    .line 827
    const-class v0, Landroid/view/View;

    const-string v1, "mPaddingRight"

    invoke-static {v0, p0, v1}, Lcom/mesalabs/cerberus/utils/Utils;->genericGetField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .line 834
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 835
    const/4 v0, 0x0

    .line 839
    .local v0, "var4":Z
    const/4 v0, 0x1

    .line 840
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminate:Z

    if-nez v1, :cond_0

    .line 841
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 842
    .local v1, "var1":I
    const/4 v0, 0x0

    .line 843
    nop

    .line 848
    nop

    .line 843
    return v1

    .line 846
    .end local v1    # "var1":I
    :cond_0
    const/4 v0, 0x0

    .line 848
    nop

    .line 853
    const/4 v1, 0x0

    .line 854
    .restart local v1    # "var1":I
    return v1

    .line 848
    .end local v1    # "var1":I
    :catchall_0
    move-exception v1

    .line 851
    throw v1

    .line 834
    .end local v0    # "var4":Z
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 860
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    if-eqz v0, :cond_0

    .line 861
    iget-object v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .local v1, "var2":Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 863
    .end local v1    # "var2":Landroid/content/res/ColorStateList;
    :cond_0
    const/4 v1, 0x0

    .line 866
    .restart local v1    # "var2":Landroid/content/res/ColorStateList;
    :goto_0
    return-object v1
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .line 870
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 872
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    if-eqz v0, :cond_0

    .line 873
    iget-object v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .local v1, "var2":Landroid/graphics/PorterDuff$Mode;
    goto :goto_0

    .line 875
    .end local v1    # "var2":Landroid/graphics/PorterDuff$Mode;
    :cond_0
    const/4 v1, 0x0

    .line 878
    .restart local v1    # "var2":Landroid/graphics/PorterDuff$Mode;
    :goto_0
    return-object v1
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .line 886
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 888
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    if-eqz v0, :cond_0

    .line 889
    iget-object v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .local v1, "var2":Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 891
    .end local v1    # "var2":Landroid/content/res/ColorStateList;
    :cond_0
    const/4 v1, 0x0

    .line 894
    .restart local v1    # "var2":Landroid/content/res/ColorStateList;
    :goto_0
    return-object v1
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .line 898
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 900
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    if-eqz v0, :cond_0

    .line 901
    iget-object v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .local v1, "var2":Landroid/graphics/PorterDuff$Mode;
    goto :goto_0

    .line 903
    .end local v1    # "var2":Landroid/graphics/PorterDuff$Mode;
    :cond_0
    const/4 v1, 0x0

    .line 906
    .restart local v1    # "var2":Landroid/graphics/PorterDuff$Mode;
    :goto_0
    return-object v1
.end method

.method public getSecondaryProgress()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .line 913
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 914
    const/4 v0, 0x0

    .line 918
    .local v0, "var4":Z
    const/4 v0, 0x1

    .line 919
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminate:Z

    if-nez v1, :cond_0

    .line 920
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 921
    .local v1, "var1":I
    const/4 v0, 0x0

    .line 922
    nop

    .line 927
    nop

    .line 922
    return v1

    .line 925
    .end local v1    # "var1":I
    :cond_0
    const/4 v0, 0x0

    .line 927
    nop

    .line 932
    const/4 v1, 0x0

    .line 933
    .restart local v1    # "var1":I
    return v1

    .line 927
    .end local v1    # "var1":I
    :catchall_0
    move-exception v1

    .line 930
    throw v1

    .line 913
    .end local v0    # "var4":Z
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .line 937
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 939
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    if-eqz v0, :cond_0

    .line 940
    iget-object v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .local v1, "var2":Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 942
    .end local v1    # "var2":Landroid/content/res/ColorStateList;
    :cond_0
    const/4 v1, 0x0

    .line 945
    .restart local v1    # "var2":Landroid/content/res/ColorStateList;
    :goto_0
    return-object v1
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 951
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    if-eqz v0, :cond_0

    .line 952
    iget-object v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .local v1, "var2":Landroid/graphics/PorterDuff$Mode;
    goto :goto_0

    .line 954
    .end local v1    # "var2":Landroid/graphics/PorterDuff$Mode;
    :cond_0
    const/4 v1, 0x0

    .line 957
    .restart local v1    # "var2":Landroid/graphics/PorterDuff$Mode;
    :goto_0
    return-object v1
.end method

.method public final getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # Z

    .line 961
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 963
    .local v0, "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 964
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 966
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    .line 967
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "var4":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 969
    .end local v1    # "var4":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x0

    .line 972
    .restart local v1    # "var4":Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object v2, v1

    .line 973
    .local v2, "var5":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_1

    .line 974
    move-object v2, v1

    .line 975
    if-nez v1, :cond_1

    .line 976
    move-object v2, v0

    .line 979
    .end local v1    # "var4":Landroid/graphics/drawable/Drawable;
    :cond_1
    goto :goto_1

    .line 980
    .end local v2    # "var5":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v2, 0x0

    .line 983
    .restart local v2    # "var5":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v2
.end method

.method public final incrementProgressBy(I)V
    .locals 1
    .param p1, "var1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1002
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1005
    :try_start_1
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgress(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1008
    nop

    .line 1010
    return-void

    .line 1007
    :catchall_0
    move-exception v0

    .line 1008
    throw v0

    .line 1002
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "var1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1013
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1016
    :try_start_1
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setSecondaryProgress(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    nop

    .line 1021
    return-void

    .line 1018
    :catchall_0
    move-exception v0

    .line 1019
    throw v0

    .line 1013
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final initProgressBar()V
    .locals 2

    .line 987
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMin:I

    .line 988
    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMax:I

    .line 989
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgress:I

    .line 990
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mSecondaryProgress:I

    .line 991
    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminate:Z

    .line 992
    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    .line 993
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mDuration:I

    .line 994
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mBehavior:I

    .line 995
    const/16 v0, 0x18

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinWidth:I

    .line 996
    const/16 v1, 0x30

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxWidth:I

    .line 997
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinHeight:I

    .line 998
    iput v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxHeight:I

    .line 999
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 1024
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mInDrawing:Z

    if-nez v0, :cond_1

    .line 1025
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1027
    .local v0, "var4":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 1028
    .local v1, "var2":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 1029
    .local v2, "var3":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/samsung/android/ui/widget/SeslProgressBar;->invalidate(IIII)V

    .line 1030
    .end local v0    # "var4":Landroid/graphics/Rect;
    .end local v1    # "var2":I
    .end local v2    # "var3":I
    goto :goto_0

    .line 1031
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1035
    :cond_1
    :goto_0
    return-void
.end method

.method public isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .line 1041
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1045
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1048
    .local v0, "var1":Z
    nop

    .line 1050
    return v0

    .line 1047
    .end local v0    # "var1":Z
    :catchall_0
    move-exception v0

    .line 1048
    throw v0

    .line 1041
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1054
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1055
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1056
    .local v0, "var1":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 1061
    if-eqz v0, :cond_1

    .line 1062
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1065
    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 9

    .line 1068
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1069
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1070
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->startAnimation()V

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1075
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1082
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1087
    .local v0, "var1":I
    nop

    .line 1089
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1091
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;

    .line 1092
    .local v2, "var3":Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;
    iget v4, v2, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->id:I

    iget v5, v2, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->progress:I

    iget-boolean v6, v2, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->fromUser:Z

    const/4 v7, 0x1

    iget-boolean v8, v2, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->animate:Z

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/ui/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    .line 1093
    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1098
    .end local v2    # "var3":Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;
    nop

    .line 1089
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1094
    .end local p0    # "this":Lcom/samsung/android/ui/widget/SeslProgressBar;
    :catchall_0
    move-exception v2

    .line 1095
    .local v2, "var22":Ljava/lang/Throwable;
    move-object v3, v2

    .line 1096
    .local v3, "var10000":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 1097
    .local v4, "var10001":Z
    goto :goto_1

    .line 1103
    .end local v1    # "var2":I
    .end local v2    # "var22":Ljava/lang/Throwable;
    .end local v3    # "var10000":Ljava/lang/Throwable;
    .end local v4    # "var10001":Z
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1104
    goto :goto_2

    .line 1105
    :catchall_1
    move-exception v1

    .line 1106
    .local v1, "var21":Ljava/lang/Throwable;
    move-object v3, v1

    .line 1107
    .restart local v3    # "var10000":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 1108
    .restart local v4    # "var10001":Z
    goto :goto_1

    .line 1083
    .end local v0    # "var1":I
    .end local v1    # "var21":Ljava/lang/Throwable;
    .end local v3    # "var10000":Ljava/lang/Throwable;
    .end local v4    # "var10001":Z
    :catchall_2
    move-exception v0

    .line 1084
    .local v0, "var23":Ljava/lang/Throwable;
    move-object v3, v0

    .line 1085
    .restart local v3    # "var10000":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 1086
    .restart local v4    # "var10001":Z
    nop

    .line 1113
    .end local v0    # "var23":Ljava/lang/Throwable;
    :goto_1
    move-object v0, v3

    .line 1116
    .local v0, "var24":Ljava/lang/Throwable;
    nop

    .end local v3    # "var10000":Ljava/lang/Throwable;
    .end local v4    # "var10001":Z
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1117
    .restart local v3    # "var10000":Ljava/lang/Throwable;
    .restart local v4    # "var10001":Z
    :catchall_3
    move-exception v1

    .line 1118
    .local v1, "var20":Ljava/lang/Throwable;
    move-object v3, v1

    .line 1119
    const/4 v4, 0x0

    .line 1120
    goto :goto_1

    .line 1075
    .end local v0    # "var24":Ljava/lang/Throwable;
    .end local v1    # "var20":Ljava/lang/Throwable;
    .end local v3    # "var10000":Ljava/lang/Throwable;
    .end local v4    # "var10001":Z
    :catchall_4
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    .line 1126
    :cond_2
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAttached:Z

    .line 1127
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1130
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1131
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->stopAnimation()V

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshProgressRunnable:Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;

    .line 1135
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1136
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1137
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshIsPosted:Z

    .line 1140
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAccessibilityEventSender:Lcom/samsung/android/ui/widget/SeslProgressBar$AccessibilityEventSender;

    .line 1141
    .local v2, "var2":Lcom/samsung/android/ui/widget/SeslProgressBar$AccessibilityEventSender;
    if-eqz v2, :cond_2

    .line 1142
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/widget/SeslProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1145
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1146
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAttached:Z

    .line 1147
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 1150
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1153
    :try_start_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1154
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1157
    nop

    .line 1159
    return-void

    .line 1156
    :catchall_0
    move-exception v0

    .line 1157
    throw v0

    .line 1150
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1162
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1163
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMax:I

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1164
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1165
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "var1"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1168
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1170
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getMin()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 1173
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 10
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1176
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1183
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1188
    .local v0, "var3":Landroid/graphics/drawable/Drawable;
    nop

    .line 1192
    if-eqz v0, :cond_0

    .line 1194
    :try_start_2
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinWidth:I

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1195
    .local v1, "var4":I
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinHeight:I

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1200
    .local v2, "var5":I
    goto :goto_0

    .line 1196
    .end local v1    # "var4":I
    .end local v2    # "var5":I
    :catchall_0
    move-exception v1

    .line 1197
    .local v1, "var20":Ljava/lang/Throwable;
    move-object v2, v1

    .line 1198
    .local v2, "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1199
    .local v3, "var10001":Z
    goto :goto_1

    .line 1202
    .end local v1    # "var20":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    :cond_0
    const/4 v2, 0x0

    .line 1203
    .local v2, "var5":I
    move v1, v2

    .line 1208
    .local v1, "var4":I
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->updateDrawableState()V

    .line 1209
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    .line 1210
    .local v3, "var6":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getPaddingRight()I

    move-result v4

    .line 1211
    .local v4, "var7":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getPaddingTop()I

    move-result v5

    .line 1212
    .local v5, "var8":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getPaddingBottom()I

    move-result v6

    .line 1213
    .local v6, "var9":I
    add-int v7, v1, v3

    add-int/2addr v7, v4

    const/4 v8, 0x0

    invoke-static {v7, p1, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    add-int v9, v2, v5

    add-int/2addr v9, v6

    invoke-static {v9, p2, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setMeasuredDimension(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1214
    return-void

    .line 1215
    .end local v3    # "var6":I
    .end local v4    # "var7":I
    .end local v5    # "var8":I
    .end local v6    # "var9":I
    :catchall_1
    move-exception v3

    .line 1216
    .local v3, "var19":Ljava/lang/Throwable;
    move-object v4, v3

    .line 1217
    .local v4, "var10000":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 1218
    .local v5, "var10001":Z
    move-object v2, v4

    goto :goto_1

    .line 1184
    .end local v0    # "var3":Landroid/graphics/drawable/Drawable;
    .end local v1    # "var4":I
    .end local v2    # "var5":I
    .end local v3    # "var19":Ljava/lang/Throwable;
    .end local v4    # "var10000":Ljava/lang/Throwable;
    .end local v5    # "var10001":Z
    :catchall_2
    move-exception v0

    .line 1185
    .local v0, "var21":Ljava/lang/Throwable;
    move-object v2, v0

    .line 1186
    .local v2, "var10000":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 1187
    .local v1, "var10001":Z
    nop

    .line 1222
    .end local v0    # "var21":Ljava/lang/Throwable;
    .end local v1    # "var10001":Z
    :goto_1
    move-object v0, v2

    .line 1224
    .local v0, "var22":Ljava/lang/Throwable;
    nop

    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local p1    # "var1":I
    .end local p2    # "var2":I
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1225
    .restart local v2    # "var10000":Ljava/lang/Throwable;
    .restart local p1    # "var1":I
    .restart local p2    # "var2":I
    :catchall_3
    move-exception v1

    .line 1226
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1228
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-void

    .line 1176
    .end local v0    # "var22":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    :catchall_4
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0
.end method

.method public onProgressRefresh(FZI)V
    .locals 2
    .param p1, "var1"    # F
    .param p2, "var2"    # Z
    .param p3, "var3"    # I

    .line 1231
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->scheduleAccessibilityEventSender()V

    .line 1235
    :cond_0
    iget p3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mSecondaryProgress:I

    .line 1236
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgress:I

    if-le p3, v0, :cond_1

    if-nez p2, :cond_1

    .line 1237
    const v0, 0x7f0901b3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->refreshProgress(IIZZ)V

    .line 1240
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Parcelable;

    .line 1243
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;

    .line 1244
    .local v0, "var2":Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1245
    iget v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgress(I)V

    .line 1246
    iget v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setSecondaryProgress(I)V

    .line 1247
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1250
    new-instance v0, Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1251
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgress:I

    iput v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;->progress:I

    .line 1252
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mSecondaryProgress:I

    iput v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;->secondaryProgress:I

    .line 1253
    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 1257
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslProgressBar;->updateDrawableBounds(II)V

    .line 1258
    return-void
.end method

.method public onSlidingRefresh(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 1261
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1262
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1263
    const/4 v1, 0x0

    .line 1264
    .local v1, "var3":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 1265
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x7f090190

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1268
    :cond_0
    if-eqz v1, :cond_1

    .line 1269
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1273
    .end local v1    # "var3":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2
    .param p1, "var1"    # Z

    .line 1276
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 1277
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAggregatedIsVisible:Z

    if-eq p1, v0, :cond_2

    .line 1278
    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAggregatedIsVisible:Z

    .line 1279
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 1280
    if-eqz p1, :cond_0

    .line 1281
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->startAnimation()V

    goto :goto_0

    .line 1283
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->stopAnimation()V

    .line 1287
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1288
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 1289
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1293
    .end local v0    # "var2":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method

.method public onVisualProgressChanged(IF)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # F

    .line 1296
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .line 1299
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 1300
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 1303
    :cond_0
    return-void
.end method

.method public final refreshProgress(IIZZ)V
    .locals 7
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Z
    .param p4, "var4"    # Z

    .line 1306
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1309
    :try_start_1
    iget-wide v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1310
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/ui/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    goto :goto_0

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshProgressRunnable:Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;

    if-nez v0, :cond_1

    .line 1313
    new-instance v0, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;-><init>(Lcom/samsung/android/ui/widget/SeslProgressBar;)V

    .line 1314
    .local v0, "var5":Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;
    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshProgressRunnable:Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;

    .line 1317
    .end local v0    # "var5":Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->obtain(IIZZ)Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;

    move-result-object v0

    .line 1318
    .local v0, "var8":Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAttached:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshIsPosted:Z

    if-nez v1, :cond_2

    .line 1320
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshProgressRunnable:Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 1321
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshIsPosted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1326
    .end local v0    # "var8":Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;
    :cond_2
    :goto_0
    nop

    .line 1328
    return-void

    .line 1325
    :catchall_0
    move-exception v0

    .line 1326
    throw v0

    .line 1306
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final scheduleAccessibilityEventSender()V
    .locals 4

    .line 1331
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAccessibilityEventSender:Lcom/samsung/android/ui/widget/SeslProgressBar$AccessibilityEventSender;

    .line 1332
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar$AccessibilityEventSender;
    if-nez v0, :cond_0

    .line 1333
    new-instance v1, Lcom/samsung/android/ui/widget/SeslProgressBar$AccessibilityEventSender;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/widget/SeslProgressBar$AccessibilityEventSender;-><init>(Lcom/samsung/android/ui/widget/SeslProgressBar;)V

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAccessibilityEventSender:Lcom/samsung/android/ui/widget/SeslProgressBar$AccessibilityEventSender;

    goto :goto_0

    .line 1335
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1338
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAccessibilityEventSender:Lcom/samsung/android/ui/widget/SeslProgressBar$AccessibilityEventSender;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/ui/widget/SeslProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1339
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 3
    .param p1, "var1"    # Z

    .line 1342
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1348
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_0

    .line 1349
    return-void

    .line 1355
    :cond_0
    nop

    .line 1358
    :try_start_2
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminate:Z

    if-ne p1, v0, :cond_1

    .line 1359
    return-void

    .line 1362
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1367
    nop

    .line 1369
    if-eqz p1, :cond_2

    .line 1371
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1372
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->startAnimation()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1377
    goto :goto_0

    .line 1373
    :catchall_0
    move-exception v0

    .line 1374
    .local v0, "var19":Ljava/lang/Throwable;
    move-object v1, v0

    .line 1375
    .local v1, "var10000":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1376
    .local v2, "var10001":Z
    goto :goto_1

    .line 1380
    .end local v0    # "var19":Ljava/lang/Throwable;
    .end local v1    # "var10000":Ljava/lang/Throwable;
    .end local v2    # "var10001":Z
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1381
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->stopAnimation()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1386
    nop

    .line 1389
    :goto_0
    return-void

    .line 1382
    :catchall_1
    move-exception v0

    .line 1383
    .local v0, "var20":Ljava/lang/Throwable;
    move-object v1, v0

    .line 1384
    .restart local v1    # "var10000":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1385
    .restart local v2    # "var10001":Z
    goto :goto_1

    .line 1363
    .end local v0    # "var20":Ljava/lang/Throwable;
    .end local v1    # "var10000":Ljava/lang/Throwable;
    .end local v2    # "var10001":Z
    :catchall_2
    move-exception v0

    .line 1364
    .local v0, "var21":Ljava/lang/Throwable;
    move-object v1, v0

    .line 1365
    .restart local v1    # "var10000":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1366
    .restart local v2    # "var10001":Z
    goto :goto_1

    .line 1351
    .end local v0    # "var21":Ljava/lang/Throwable;
    .end local v1    # "var10000":Ljava/lang/Throwable;
    .end local v2    # "var10001":Z
    :catchall_3
    move-exception v0

    .line 1352
    .local v0, "var22":Ljava/lang/Throwable;
    move-object v1, v0

    .line 1353
    .restart local v1    # "var10000":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1354
    .restart local v2    # "var10001":Z
    nop

    .line 1392
    .end local v0    # "var22":Ljava/lang/Throwable;
    .end local v2    # "var10001":Z
    :goto_1
    move-object v0, v1

    .line 1394
    .local v0, "var2":Ljava/lang/Throwable;
    nop

    .end local v1    # "var10000":Ljava/lang/Throwable;
    .end local p1    # "var1":Z
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1395
    .restart local v1    # "var10000":Ljava/lang/Throwable;
    .restart local p1    # "var1":Z
    :catchall_4
    move-exception v2

    .line 1396
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1398
    .end local v2    # "throwable":Ljava/lang/Throwable;
    return-void

    .line 1342
    .end local v0    # "var2":Ljava/lang/Throwable;
    .end local v1    # "var10000":Ljava/lang/Throwable;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 1401
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 1402
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    if-eq v0, p1, :cond_3

    .line 1403
    if-eqz v0, :cond_0

    .line 1404
    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1405
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1408
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 1409
    if-eqz p1, :cond_2

    .line 1410
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1411
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1412
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1413
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1416
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->applyIndeterminateTint()V

    .line 1419
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v1, :cond_3

    .line 1420
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1421
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->postInvalidate()V

    .line 1425
    :cond_3
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 1428
    move-object v0, p1

    .line 1429
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 1430
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1433
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1434
    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/res/ColorStateList;

    .line 1437
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1438
    new-instance v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 1442
    .local v0, "var2":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    iput-object p1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 1443
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 1444
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->applyIndeterminateTint()V

    .line 1445
    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "var1"    # Landroid/graphics/PorterDuff$Mode;

    .line 1448
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1449
    new-instance v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 1453
    .local v0, "var2":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    iput-object p1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1454
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 1455
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->applyIndeterminateTint()V

    .line 1456
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # I

    .line 1459
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1460
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/animation/Interpolator;

    .line 1463
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1464
    return-void
.end method

.method public setMax(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 1467
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 1468
    move v0, p1

    .line 1475
    .local v0, "var2":I
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v1, :cond_0

    .line 1476
    goto :goto_0

    .line 1482
    :cond_0
    nop

    .line 1484
    move v0, p1

    .line 1487
    :try_start_2
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMin:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ge p1, v2, :cond_1

    .line 1488
    move v0, v2

    .line 1494
    :cond_1
    nop

    .line 1499
    :goto_0
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxInitialized:Z

    .line 1500
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMax:I

    if-eq v0, v1, :cond_3

    .line 1501
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMax:I

    .line 1502
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->postInvalidate()V

    .line 1503
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgress:I

    if-le v1, v0, :cond_2

    .line 1504
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgress:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1506
    :cond_2
    nop

    .line 1526
    const v1, 0x7f090190

    :try_start_4
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgress:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/samsung/android/ui/widget/SeslProgressBar;->refreshProgress(IIZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1527
    return-void

    .line 1528
    :catchall_0
    move-exception v1

    .line 1529
    .local v1, "var29":Ljava/lang/Throwable;
    move-object v2, v1

    .line 1530
    .local v2, "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1531
    .local v3, "var10001":Z
    goto :goto_1

    .line 1512
    .end local v1    # "var29":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    :cond_3
    nop

    .line 1515
    :try_start_5
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMax:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1516
    return-void

    .line 1517
    :catchall_1
    move-exception v1

    .line 1518
    .local v1, "var30":Ljava/lang/Throwable;
    move-object v2, v1

    .line 1519
    .restart local v2    # "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1520
    .restart local v3    # "var10001":Z
    goto :goto_1

    .line 1508
    .end local v1    # "var30":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    :catchall_2
    move-exception v1

    .line 1509
    .local v1, "var31":Ljava/lang/Throwable;
    move-object v2, v1

    .line 1510
    .restart local v2    # "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1511
    .restart local v3    # "var10001":Z
    goto :goto_1

    .line 1490
    .end local v1    # "var31":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    :catchall_3
    move-exception v1

    .line 1491
    .local v1, "var32":Ljava/lang/Throwable;
    move-object v2, v1

    .line 1492
    .restart local v2    # "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1493
    .restart local v3    # "var10001":Z
    goto :goto_1

    .line 1478
    .end local v1    # "var32":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    :catchall_4
    move-exception v1

    .line 1479
    .local v1, "var33":Ljava/lang/Throwable;
    move-object v2, v1

    .line 1480
    .restart local v2    # "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1481
    .restart local v3    # "var10001":Z
    nop

    .line 1535
    .end local v1    # "var33":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    :goto_1
    move-object v1, v2

    .line 1537
    .local v1, "var3":Ljava/lang/Throwable;
    nop

    .end local v0    # "var2":I
    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local p1    # "var1":I
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1538
    .restart local v0    # "var2":I
    .restart local v2    # "var10000":Ljava/lang/Throwable;
    .restart local p1    # "var1":I
    :catchall_5
    move-exception v3

    .line 1539
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1541
    .end local v3    # "throwable":Ljava/lang/Throwable;
    return-void

    .line 1467
    .end local v0    # "var2":I
    .end local v1    # "var3":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v0
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 1544
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxHeight:I

    .line 1545
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->requestLayout()V

    .line 1546
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 1549
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxWidth:I

    .line 1550
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->requestLayout()V

    .line 1551
    return-void
.end method

.method public setMin(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 1554
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 1555
    move v0, p1

    .line 1562
    .local v0, "var2":I
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v1, :cond_0

    .line 1563
    goto :goto_0

    .line 1569
    :cond_0
    nop

    .line 1571
    move v0, p1

    .line 1574
    :try_start_2
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMax:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-le p1, v2, :cond_1

    .line 1575
    move v0, v2

    .line 1581
    :cond_1
    nop

    .line 1586
    :goto_0
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinInitialized:Z

    .line 1587
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMin:I

    if-eq v0, v1, :cond_3

    .line 1588
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMin:I

    .line 1589
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->postInvalidate()V

    .line 1590
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgress:I

    if-ge v1, v0, :cond_2

    .line 1591
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgress:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1593
    :cond_2
    nop

    .line 1613
    const v1, 0x7f090190

    :try_start_4
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgress:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/samsung/android/ui/widget/SeslProgressBar;->refreshProgress(IIZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1614
    return-void

    .line 1615
    :catchall_0
    move-exception v1

    .line 1616
    .local v1, "var29":Ljava/lang/Throwable;
    move-object v2, v1

    .line 1617
    .local v2, "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1618
    .local v3, "var10001":Z
    goto :goto_1

    .line 1599
    .end local v1    # "var29":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    :cond_3
    nop

    .line 1602
    :try_start_5
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMin:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1603
    return-void

    .line 1604
    :catchall_1
    move-exception v1

    .line 1605
    .local v1, "var30":Ljava/lang/Throwable;
    move-object v2, v1

    .line 1606
    .restart local v2    # "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1607
    .restart local v3    # "var10001":Z
    goto :goto_1

    .line 1595
    .end local v1    # "var30":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    :catchall_2
    move-exception v1

    .line 1596
    .local v1, "var31":Ljava/lang/Throwable;
    move-object v2, v1

    .line 1597
    .restart local v2    # "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1598
    .restart local v3    # "var10001":Z
    goto :goto_1

    .line 1577
    .end local v1    # "var31":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    :catchall_3
    move-exception v1

    .line 1578
    .local v1, "var32":Ljava/lang/Throwable;
    move-object v2, v1

    .line 1579
    .restart local v2    # "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1580
    .restart local v3    # "var10001":Z
    goto :goto_1

    .line 1565
    .end local v1    # "var32":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    :catchall_4
    move-exception v1

    .line 1566
    .local v1, "var33":Ljava/lang/Throwable;
    move-object v2, v1

    .line 1567
    .restart local v2    # "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1568
    .restart local v3    # "var10001":Z
    nop

    .line 1622
    .end local v1    # "var33":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    :goto_1
    move-object v1, v2

    .line 1624
    .local v1, "var3":Ljava/lang/Throwable;
    nop

    .end local v0    # "var2":I
    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local p1    # "var1":I
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1625
    .restart local v0    # "var2":I
    .restart local v2    # "var10000":Ljava/lang/Throwable;
    .restart local p1    # "var1":I
    :catchall_5
    move-exception v3

    .line 1626
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1628
    .end local v3    # "throwable":Ljava/lang/Throwable;
    return-void

    .line 1554
    .end local v0    # "var2":I
    .end local v1    # "var3":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v0
.end method

.method public setMinHeight(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 1631
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinHeight:I

    .line 1632
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->requestLayout()V

    .line 1633
    return-void
.end method

.method public setMinWidth(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 1636
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinWidth:I

    .line 1637
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->requestLayout()V

    .line 1638
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 1641
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    .line 1643
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 1644
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 1645
    const/4 v0, 0x0

    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1647
    .end local v0    # "var2":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08015d

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "var2":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1650
    .end local v0    # "var2":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08014c

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1653
    .restart local v0    # "var2":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_2

    .line 1654
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    .line 1657
    :cond_2
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1660
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1663
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgressInternal(IZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1666
    nop

    .line 1668
    return-void

    .line 1665
    :catchall_0
    move-exception v0

    .line 1666
    throw v0

    .line 1660
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/res/ColorStateList;

    .line 1671
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1672
    new-instance v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 1676
    .local v0, "var2":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    iput-object p1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 1677
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 1678
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1679
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->applyProgressBackgroundTint()V

    .line 1682
    :cond_1
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "var1"    # Landroid/graphics/PorterDuff$Mode;

    .line 1685
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1686
    new-instance v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 1689
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 1690
    .local v0, "var2":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    iput-object p1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1691
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 1692
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1693
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->applyProgressBackgroundTint()V

    .line 1696
    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 1699
    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1700
    .local v6, "var2":Landroid/graphics/drawable/Drawable;
    if-eq v6, p1, :cond_6

    .line 1701
    if-eqz v6, :cond_0

    .line 1702
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1703
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1706
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1707
    if-eqz p1, :cond_4

    .line 1708
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1709
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1710
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1711
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1715
    :cond_1
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1716
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 1717
    .local v0, "var3":I
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxWidth:I

    if-ge v1, v0, :cond_3

    .line 1718
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxWidth:I

    .line 1719
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->requestLayout()V

    goto :goto_0

    .line 1722
    .end local v0    # "var3":I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 1723
    .restart local v0    # "var3":I
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxHeight:I

    if-ge v1, v0, :cond_3

    .line 1724
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxHeight:I

    .line 1725
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->requestLayout()V

    .line 1729
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->applyProgressTints()V

    .line 1732
    .end local v0    # "var3":I
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_5

    .line 1733
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1734
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->postInvalidate()V

    .line 1737
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->updateDrawableBounds(II)V

    .line 1738
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->updateDrawableState()V

    .line 1739
    const v1, 0x7f090190

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgress:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    .line 1740
    const v1, 0x7f0901b3

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mSecondaryProgress:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    .line 1743
    :cond_6
    return-void
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 1746
    move-object v0, p1

    .line 1747
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 1748
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1751
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1752
    return-void
.end method

.method public setProgressInternal(IZZ)Z
    .locals 6
    .param p1, "var1"    # I
    .param p2, "var2"    # Z
    .param p3, "var3"    # Z

    .line 1755
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1762
    const/4 v0, 0x0

    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1767
    .local v1, "var4":Z
    nop

    .line 1769
    if-eqz v1, :cond_0

    .line 1770
    return v0

    .line 1775
    :cond_0
    :try_start_2
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMin:I

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMax:I

    invoke-static {p1, v2, v3}, Lcom/samsung/android/ui/widget/SeslProgressBar;->constrain(III)I

    move-result v2

    .line 1776
    .local v2, "var5":I
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgress:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move p1, v3

    .line 1781
    nop

    .line 1783
    if-ne v2, p1, :cond_1

    .line 1784
    return v0

    .line 1788
    :cond_1
    :try_start_3
    iput v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgress:I

    .line 1789
    const v3, 0x7f090190

    invoke-virtual {p0, v3, v2, p2, p3}, Lcom/samsung/android/ui/widget/SeslProgressBar;->refreshProgress(IIZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1794
    nop

    .line 1796
    const/4 v0, 0x1

    return v0

    .line 1790
    :catchall_0
    move-exception v3

    .line 1791
    .local v3, "var16":Ljava/lang/Throwable;
    move-object v4, v3

    .line 1792
    .local v4, "var10000":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 1793
    .local v5, "var10001":Z
    goto :goto_0

    .line 1777
    .end local v2    # "var5":I
    .end local v3    # "var16":Ljava/lang/Throwable;
    .end local v4    # "var10000":Ljava/lang/Throwable;
    .end local v5    # "var10001":Z
    :catchall_1
    move-exception v2

    .line 1778
    .local v2, "var17":Ljava/lang/Throwable;
    move-object v4, v2

    .line 1779
    .restart local v4    # "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1780
    .local v3, "var10001":Z
    goto :goto_0

    .line 1763
    .end local v1    # "var4":Z
    .end local v2    # "var17":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    .end local v4    # "var10000":Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    .line 1764
    .local v1, "var18":Ljava/lang/Throwable;
    move-object v4, v1

    .line 1765
    .restart local v4    # "var10000":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1766
    .local v2, "var10001":Z
    nop

    .line 1799
    .end local v1    # "var18":Ljava/lang/Throwable;
    .end local v2    # "var10001":Z
    :goto_0
    move-object v1, v4

    .line 1801
    .local v1, "var6":Ljava/lang/Throwable;
    nop

    .end local v4    # "var10000":Ljava/lang/Throwable;
    .end local p1    # "var1":I
    .end local p2    # "var2":Z
    .end local p3    # "var3":Z
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1802
    .restart local v4    # "var10000":Ljava/lang/Throwable;
    .restart local p1    # "var1":I
    .restart local p2    # "var2":Z
    .restart local p3    # "var3":Z
    :catchall_3
    move-exception v2

    .line 1803
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1804
    return v0

    .line 1755
    .end local v1    # "var6":Ljava/lang/Throwable;
    .end local v2    # "throwable":Ljava/lang/Throwable;
    .end local v4    # "var10000":Ljava/lang/Throwable;
    :catchall_4
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/res/ColorStateList;

    .line 1809
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1810
    new-instance v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 1813
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 1814
    .local v0, "var2":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    iput-object p1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 1815
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 1816
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1817
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->applyPrimaryProgressTint()V

    .line 1820
    :cond_1
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "var1"    # Landroid/graphics/PorterDuff$Mode;

    .line 1823
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1824
    new-instance v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 1827
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 1828
    .local v0, "var2":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    iput-object p1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1829
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 1830
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1831
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->applyPrimaryProgressTint()V

    .line 1834
    :cond_1
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 5
    .param p1, "var1"    # I

    .line 1837
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1844
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1849
    .local v0, "var2":Z
    nop

    .line 1851
    if-eqz v0, :cond_0

    .line 1852
    return-void

    .line 1855
    :cond_0
    move v1, p1

    .line 1858
    .local v1, "var3":I
    :try_start_2
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMin:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ge p1, v2, :cond_1

    .line 1859
    move v1, v2

    .line 1865
    :cond_1
    nop

    .line 1867
    move p1, v1

    .line 1870
    :try_start_3
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMax:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-le v1, v2, :cond_2

    .line 1871
    move p1, v2

    .line 1877
    :cond_2
    nop

    .line 1880
    :try_start_4
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mSecondaryProgress:I

    if-eq p1, v2, :cond_3

    .line 1881
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mSecondaryProgress:I

    .line 1882
    const v2, 0x7f0901b3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/samsung/android/ui/widget/SeslProgressBar;->refreshProgress(IIZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1888
    :cond_3
    nop

    .line 1890
    return-void

    .line 1884
    :catchall_0
    move-exception v2

    .line 1885
    .local v2, "var21":Ljava/lang/Throwable;
    move-object v3, v2

    .line 1886
    .local v3, "var10000":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 1887
    .local v4, "var10001":Z
    goto :goto_0

    .line 1873
    .end local v2    # "var21":Ljava/lang/Throwable;
    .end local v3    # "var10000":Ljava/lang/Throwable;
    .end local v4    # "var10001":Z
    :catchall_1
    move-exception v2

    .line 1874
    .local v2, "var22":Ljava/lang/Throwable;
    move-object v3, v2

    .line 1875
    .restart local v3    # "var10000":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 1876
    .restart local v4    # "var10001":Z
    goto :goto_0

    .line 1861
    .end local v2    # "var22":Ljava/lang/Throwable;
    .end local v3    # "var10000":Ljava/lang/Throwable;
    .end local v4    # "var10001":Z
    :catchall_2
    move-exception v2

    .line 1862
    .local v2, "var23":Ljava/lang/Throwable;
    move-object v3, v2

    .line 1863
    .restart local v3    # "var10000":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 1864
    .restart local v4    # "var10001":Z
    goto :goto_0

    .line 1845
    .end local v0    # "var2":Z
    .end local v1    # "var3":I
    .end local v2    # "var23":Ljava/lang/Throwable;
    .end local v3    # "var10000":Ljava/lang/Throwable;
    .end local v4    # "var10001":Z
    :catchall_3
    move-exception v0

    .line 1846
    .local v0, "var24":Ljava/lang/Throwable;
    move-object v3, v0

    .line 1847
    .restart local v3    # "var10000":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 1848
    .local v1, "var10001":Z
    nop

    .line 1893
    .end local v0    # "var24":Ljava/lang/Throwable;
    .end local v1    # "var10001":Z
    :goto_0
    move-object v0, v3

    .line 1895
    .local v0, "var4":Ljava/lang/Throwable;
    nop

    .end local v3    # "var10000":Ljava/lang/Throwable;
    .end local p1    # "var1":I
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1896
    .restart local v3    # "var10000":Ljava/lang/Throwable;
    .restart local p1    # "var1":I
    :catchall_4
    move-exception v1

    .line 1897
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1899
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-void

    .line 1837
    .end local v0    # "var4":Ljava/lang/Throwable;
    .end local v3    # "var10000":Ljava/lang/Throwable;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v0
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/res/ColorStateList;

    .line 1902
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1903
    new-instance v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 1906
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 1907
    .local v0, "var2":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    iput-object p1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 1908
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 1909
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1910
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->applySecondaryProgressTint()V

    .line 1913
    :cond_1
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "var1"    # Landroid/graphics/PorterDuff$Mode;

    .line 1916
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1917
    new-instance v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 1920
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;

    .line 1921
    .local v0, "var2":Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;
    iput-object p1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1922
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 1923
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1924
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->applySecondaryProgressTint()V

    .line 1927
    :cond_1
    return-void
.end method

.method public final setVisualProgress(IF)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # F

    .line 1930
    iput p2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mVisualProgress:F

    .line 1931
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1932
    .local v0, "var3":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    .line 1933
    .local v1, "var4":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 1934
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1935
    move-object v1, v0

    .line 1936
    if-nez v0, :cond_0

    .line 1937
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1941
    :cond_0
    if-eqz v1, :cond_1

    .line 1942
    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 1944
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->invalidate()V

    .line 1947
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslProgressBar;->onVisualProgressChanged(IF)V

    .line 1948
    return-void
.end method

.method public final startAnimation()V
    .locals 5

    .line 1952
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 1953
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1954
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mHasAnimation:Z

    goto :goto_2

    .line 1957
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mHasAnimation:Z

    .line 1958
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 1959
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1962
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 1963
    .local v0, "var1":Landroid/view/animation/Transformation;
    if-nez v0, :cond_3

    .line 1964
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    goto :goto_0

    .line 1966
    :cond_3
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 1969
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1970
    .local v1, "var2":Landroid/view/animation/AlphaAnimation;
    if-nez v1, :cond_4

    .line 1971
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    goto :goto_1

    .line 1973
    :cond_4
    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 1976
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mBehavior:I

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1977
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1978
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1979
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1980
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 1983
    .end local v0    # "var1":Landroid/view/animation/Transformation;
    .end local v1    # "var2":Landroid/view/animation/AlphaAnimation;
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->postInvalidate()V

    .line 1986
    :cond_5
    return-void
.end method

.method public final stopAnimation()V
    .locals 3

    .line 1989
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mHasAnimation:Z

    .line 1990
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 1991
    .local v1, "var1":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_0

    .line 1992
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1993
    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1996
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->postInvalidate()V

    .line 1997
    return-void
.end method

.method public final swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 2001
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 2002
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 2003
    if-eq v0, p1, :cond_2

    .line 2004
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2005
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2008
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 2009
    if-eqz p1, :cond_2

    .line 2011
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2012
    const/4 v2, 0x1

    .local v2, "var3":Z
    goto :goto_0

    .line 2014
    .end local v2    # "var3":Z
    :cond_1
    const/4 v2, 0x0

    .line 2017
    .restart local v2    # "var3":Z
    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2021
    .end local v2    # "var3":Z
    :cond_2
    return-void
.end method

.method public final tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "var2"    # Z

    .line 2024
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    .line 2025
    .local v0, "var3":Z
    const/4 v1, 0x0

    .line 2026
    .local v1, "var4":I
    const/4 v2, 0x0

    .line 2027
    .local v2, "var5":B
    if-nez v0, :cond_5

    .line 2028
    instance-of v3, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_2

    .line 2029
    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 2030
    .local v3, "var13":Landroid/graphics/drawable/StateListDrawable;
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2032
    .local v4, "var18":Landroid/graphics/drawable/StateListDrawable;
    invoke-static {v3}, Lcom/samsung/android/ui/widget/SeslProgressBar$StateListDrawableCompat;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v5

    .local v5, "var14":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 2033
    invoke-static {v3, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar$StateListDrawableCompat;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v6

    .line 2034
    .local v6, "var17":[I
    invoke-static {v3, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar$StateListDrawableCompat;->getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2035
    .local v7, "var10":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_0

    .line 2036
    invoke-virtual {p0, v7, p2}, Lcom/samsung/android/ui/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2032
    .end local v6    # "var17":[I
    .end local v7    # "var10":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2040
    .end local v5    # "var14":I
    :cond_1
    return-object v4

    .line 2042
    .end local v3    # "var13":Landroid/graphics/drawable/StateListDrawable;
    .end local v4    # "var18":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    move-object v3, p1

    .line 2043
    .local v3, "var16":Ljava/lang/Object;
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_4

    .line 2044
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 2045
    .local v4, "var12":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 2046
    iget v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mSampleWidth:I

    if-gtz v5, :cond_3

    .line 2047
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mSampleWidth:I

    .line 2050
    :cond_3
    move-object v3, v4

    .line 2051
    if-eqz p2, :cond_4

    .line 2052
    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-direct {v5, v4, v6, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object v5

    .line 2056
    .end local v4    # "var12":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/Drawable;

    return-object v4

    .line 2059
    .end local v3    # "var16":Ljava/lang/Object;
    :cond_5
    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 2060
    .local v3, "var11":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    .line 2061
    .local v4, "var6":I
    new-array v5, v4, [Landroid/graphics/drawable/Drawable;

    .line 2063
    .local v5, "var7":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_7

    .line 2064
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    .line 2065
    .local v6, "var8":I
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2066
    .local v7, "var9":Landroid/graphics/drawable/Drawable;
    const v8, 0x7f090190

    if-eq v6, v8, :cond_6

    const v8, 0x7f0901b3

    if-eq v6, v8, :cond_6

    .line 2067
    const/4 p2, 0x0

    goto :goto_2

    .line 2069
    :cond_6
    const/4 p2, 0x1

    .line 2072
    :goto_2
    invoke-virtual {p0, v7, p2}, Lcom/samsung/android/ui/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v5, v1

    .line 2063
    .end local v6    # "var8":I
    .end local v7    # "var9":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2075
    :cond_7
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 2076
    .local v6, "var15":Landroid/graphics/drawable/LayerDrawable;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_8

    .line 2077
    move v1, v2

    :goto_3
    if-ge v1, v4, :cond_8

    .line 2078
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 2079
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 2080
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    .line 2081
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 2082
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    .line 2083
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    .line 2084
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    .line 2085
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    .line 2086
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    .line 2087
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    .line 2077
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2091
    :cond_8
    return-object v6
.end method

.method public final tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 2096
    move-object v0, p1

    .line 2097
    .local v0, "var2":Ljava/lang/Object;
    instance-of v1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    .line 2098
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 2099
    .local v1, "var3":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    .line 2100
    .local v2, "var4":I
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    move-object v0, v3

    .line 2101
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 2103
    const/4 v3, 0x0

    .local v3, "var5":I
    :goto_0
    const/16 v4, 0x2710

    if-ge v3, v2, :cond_0

    .line 2104
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/ui/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2105
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 2106
    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 2103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2109
    .end local v3    # "var5":I
    :cond_0
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 2112
    .end local v1    # "var3":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "var4":I
    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method public updateDrawableBounds(II)V
    .locals 11
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 2117
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p1, v0

    .line 2118
    .local v0, "var3":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int v1, p2, v1

    .line 2119
    .local v1, "var4":I
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 2120
    .local v2, "var5":Landroid/graphics/drawable/Drawable;
    move p1, v0

    .line 2121
    move p2, v1

    .line 2122
    if-eqz v2, :cond_3

    .line 2125
    iget-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    if-eqz v3, :cond_1

    instance-of v3, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v3, :cond_1

    .line 2126
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 2127
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    .line 2128
    int-to-float v3, p1

    int-to-float v4, p2

    div-float/2addr v3, v4

    .line 2129
    .local v3, "var6":F
    int-to-float v4, v0

    .line 2130
    .local v4, "var7":F
    int-to-float v5, v1

    .line 2131
    .local v5, "var8":F
    div-float v6, v4, v5

    .line 2132
    .local v6, "var9":F
    sub-float v7, v3, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1

    .line 2133
    cmpl-float v7, v6, v3

    if-lez v7, :cond_0

    .line 2134
    mul-float v7, v5, v3

    float-to-int p2, v7

    .line 2135
    sub-int v7, v0, p2

    div-int/lit8 v7, v7, 0x2

    .line 2136
    .end local p1    # "var1":I
    .local v7, "var1":I
    add-int/2addr p2, v7

    .line 2137
    const/4 p1, 0x0

    .local p1, "var10":I
    goto :goto_0

    .line 2139
    .end local v7    # "var1":I
    .local p1, "var1":I
    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v3

    mul-float/2addr v7, v4

    float-to-int p2, v7

    .line 2140
    sub-int v7, v1, p2

    div-int/lit8 v7, v7, 0x2

    .line 2141
    .end local p1    # "var1":I
    .restart local v7    # "var1":I
    move p1, v7

    .line 2142
    .local p1, "var10":I
    add-int v1, p2, v7

    .line 2143
    const/4 v7, 0x0

    .line 2144
    move p2, v0

    .line 2146
    goto :goto_0

    .line 2150
    .end local v3    # "var6":F
    .end local v4    # "var7":F
    .end local v5    # "var8":F
    .end local v6    # "var9":F
    .end local v7    # "var1":I
    .local p1, "var1":I
    :cond_1
    move p2, v0

    .line 2151
    const/4 v7, 0x0

    .line 2152
    .end local p1    # "var1":I
    .restart local v7    # "var1":I
    move p1, v7

    .line 2155
    .local p1, "var10":I
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v3, :cond_2

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2156
    sub-int p2, v0, p2

    .line 2157
    sub-int v3, v0, v7

    .end local v7    # "var1":I
    .local v3, "var1":I
    goto :goto_1

    .line 2159
    .end local v3    # "var1":I
    .restart local v7    # "var1":I
    :cond_2
    move v0, v7

    .line 2160
    move v3, p2

    .line 2161
    .end local v7    # "var1":I
    .restart local v3    # "var1":I
    move p2, v0

    .line 2164
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p2, p1, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2165
    move p2, v1

    move p1, v3

    .line 2168
    .end local v3    # "var1":I
    .local p1, "var1":I
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 2169
    if-eqz v2, :cond_4

    .line 2170
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2173
    :cond_4
    return-void
.end method

.method public final updateDrawableState()V
    .locals 5

    .line 2176
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 2177
    .local v0, "var1":[I
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 2178
    .local v1, "var2":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 2179
    .local v2, "var3":Z
    move v3, v2

    .line 2180
    .local v3, "var4":Z
    if-eqz v1, :cond_0

    .line 2181
    move v3, v2

    .line 2182
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2183
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/lit8 v3, v4, 0x0

    .line 2187
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 2188
    move v2, v3

    .line 2189
    if-eqz v1, :cond_1

    .line 2190
    move v2, v3

    .line 2191
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2192
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int v2, v3, v4

    .line 2196
    :cond_1
    if-eqz v2, :cond_2

    .line 2197
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->invalidate()V

    .line 2200
    :cond_2
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 2204
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2205
    const/4 v0, 0x0

    .local v0, "var2":Z
    goto :goto_0

    .line 2207
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x1

    .line 2210
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method
