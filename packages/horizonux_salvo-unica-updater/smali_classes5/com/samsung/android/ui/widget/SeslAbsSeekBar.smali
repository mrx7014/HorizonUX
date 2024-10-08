.class public abstract Lcom/samsung/android/ui/widget/SeslAbsSeekBar;
.super Lcom/samsung/android/ui/widget/SeslProgressBar;
.source "SeslAbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;,
        Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;
    }
.end annotation


# static fields
.field public static final IS_BASE_SDK_VERSION:Z


# instance fields
.field public mAllowedSeekBarAnimation:Z

.field public mCurrentProgressLevel:I

.field public mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

.field public mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

.field public mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

.field public mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

.field public mDisabledAlpha:F

.field public mDivider:Landroid/graphics/drawable/Drawable;

.field public final mGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mHasThumbTint:Z

.field public mHasThumbTintMode:Z

.field public mHasTickMarkTint:Z

.field public mHasTickMarkTintMode:Z

.field public mHoveringLevel:I

.field public mIsDragging:Z

.field public mIsDraggingForSliding:Z

.field public mIsFirstSetProgress:Z

.field public mIsLightTheme:Z

.field public mIsSeamless:Z

.field public mIsTouchDisabled:Z

.field public mIsUserSeekable:Z

.field public mKeyProgressIncrement:I

.field public mLargeFont:Z

.field public mMuteAnimationSet:Landroid/animation/AnimatorSet;

.field public mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

.field public mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

.field public mOverlapBackground:Landroid/graphics/drawable/Drawable;

.field public mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

.field public mOverlapPoint:I

.field public mPreviousHoverPopupType:I

.field public mScaledTouchSlop:I

.field public mSetDualColorMode:Z

.field public mSplitProgress:Landroid/graphics/drawable/Drawable;

.field public mSplitTrack:Z

.field public final mTempRect:Landroid/graphics/Rect;

.field public mThumb:Landroid/graphics/drawable/Drawable;

.field public mThumbOffset:I

.field public mThumbPosX:I

.field public mThumbRadius:I

.field public final mThumbRect:Landroid/graphics/Rect;

.field public mThumbTintList:Landroid/content/res/ColorStateList;

.field public mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field public mTickMark:Landroid/graphics/drawable/Drawable;

.field public mTickMarkTintList:Landroid/content/res/ColorStateList;

.field public mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field public mTouchDownX:F

.field public mTouchDownY:F

.field public mTouchProgressOffset:F

.field public mTrackMaxWidth:I

.field public mTrackMinWidth:I

.field public mUseMuteAnimation:Z

.field public mUserGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 119
    const/4 v0, 0x1

    .local v0, "var0":Z
    goto :goto_0

    .line 121
    .end local v0    # "var0":Z
    :cond_0
    const/4 v0, 0x0

    .line 124
    .restart local v0    # "var0":Z
    :goto_0
    sput-boolean v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    .line 125
    .end local v0    # "var0":Z
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/Context;

    .line 128
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 131
    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 133
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    .line 134
    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 135
    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 136
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    .line 137
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    .line 139
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    .line 140
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    .line 143
    iput v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHoveringLevel:I

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapPoint:I

    .line 145
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 146
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mUseMuteAnimation:Z

    .line 147
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    .line 148
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 149
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mLargeFont:Z

    .line 150
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    .line 151
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mSetDualColorMode:Z

    .line 152
    iput v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    .line 153
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 160
    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 161
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 162
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    .line 163
    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 164
    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 165
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    .line 166
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    .line 168
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    .line 169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    .line 171
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    .line 172
    iput v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHoveringLevel:I

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapPoint:I

    .line 174
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 175
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mUseMuteAnimation:Z

    .line 176
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    .line 177
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 178
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mLargeFont:Z

    .line 179
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    .line 180
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mSetDualColorMode:Z

    .line 181
    iput v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    .line 182
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I

    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 191
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {p0 .. p4}, Lcom/samsung/android/ui/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 193
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 194
    iput-object v10, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 195
    const/4 v11, 0x0

    iput-boolean v11, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 196
    iput-boolean v11, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    .line 197
    iput-object v10, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 198
    iput-object v10, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 199
    iput-boolean v11, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    .line 200
    iput-boolean v11, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    .line 201
    const/4 v12, 0x1

    iput-boolean v12, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    .line 202
    iput v12, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    .line 203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    .line 205
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    .line 206
    iput v11, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHoveringLevel:I

    .line 207
    const/4 v13, -0x1

    iput v13, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapPoint:I

    .line 208
    iput-boolean v11, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 209
    iput-boolean v11, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mUseMuteAnimation:Z

    .line 210
    iput-boolean v11, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    .line 211
    iput-boolean v11, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 212
    iput-boolean v11, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mLargeFont:Z

    .line 213
    iput-boolean v11, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    .line 214
    iput-boolean v11, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mSetDualColorMode:Z

    .line 215
    iput v11, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    .line 216
    iput-boolean v11, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    .line 217
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->SeslAbsSeekBar:[I

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual {v8, v9, v0, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 218
    .local v6, "var5":Landroid/content/res/TypedArray;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 219
    sget-object v2, Lcom/mesalabs/ten/update/R$styleable;->SeslAbsSeekBar:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v6

    move/from16 v5, p3

    move-object v10, v6

    .end local v6    # "var5":Landroid/content/res/TypedArray;
    .local v10, "var5":Landroid/content/res/TypedArray;
    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    goto :goto_0

    .line 218
    .end local v10    # "var5":Landroid/content/res/TypedArray;
    .restart local v6    # "var5":Landroid/content/res/TypedArray;
    :cond_0
    move-object v10, v6

    .line 222
    .end local v6    # "var5":Landroid/content/res/TypedArray;
    .restart local v10    # "var5":Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 223
    .local v0, "var6":Landroid/content/res/Resources;
    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 224
    const/4 v1, 0x4

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual {v10, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iget-object v2, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 226
    iput-boolean v12, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    .line 229
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 231
    iput-boolean v12, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 234
    :cond_2
    const/16 v1, 0x9

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 235
    const/16 v1, 0xb

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    invoke-virtual {v10, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iget-object v2, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 237
    iput-boolean v12, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    .line 240
    :cond_3
    const/16 v1, 0xa

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 242
    iput-boolean v12, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    .line 245
    :cond_4
    const/4 v1, 0x2

    invoke-virtual {v10, v1, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mSplitTrack:Z

    .line 246
    const/16 v2, 0x8

    const v3, 0x7f070269

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMinWidth:I

    .line 247
    const/4 v2, 0x7

    const v3, 0x7f07026a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    .line 248
    const/4 v2, 0x6

    const v3, 0x7f070268

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbRadius:I

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getThumbOffset()I

    move-result v2

    invoke-virtual {v10, v12, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumbOffset(I)V

    .line 250
    const/4 v2, 0x5

    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 251
    invoke-virtual {v10, v2, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v7, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    .line 254
    :cond_5
    const/16 v2, 0xc

    invoke-virtual {v10, v2, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 255
    .local v2, "var7":Z
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    if-eqz v2, :cond_6

    .line 257
    sget-object v3, Lcom/mesalabs/ten/update/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v8, v9, v3, v11, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 258
    .local v3, "var9":Landroid/content/res/TypedArray;
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    .line 259
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    .end local v3    # "var9":Landroid/content/res/TypedArray;
    goto :goto_1

    .line 261
    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    .line 264
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->applyThumbTint()V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    .line 266
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mScaledTouchSlop:I

    .line 267
    invoke-static/range {p1 .. p1}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v3

    xor-int/2addr v3, v12

    iput-boolean v3, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsLightTheme:Z

    .line 268
    const v3, 0x7f06016c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 269
    const v3, 0x7f06016d

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

    .line 270
    const v3, 0x7f06016b

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 271
    iget-boolean v3, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsLightTheme:Z

    if-eqz v3, :cond_7

    .line 272
    const v3, 0x7f060172

    .end local p3    # "var3":I
    .local v3, "var3":I
    goto :goto_2

    .line 274
    .end local v3    # "var3":I
    .restart local p3    # "var3":I
    :cond_7
    const v3, 0x7f060171

    .line 277
    .end local p3    # "var3":I
    .restart local v3    # "var3":I
    :goto_2
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 278
    const v5, 0x7f060170

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 279
    iput-object v4, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 281
    if-nez v4, :cond_9

    .line 282
    new-array v4, v12, [I

    const v5, 0x101009e

    aput v5, v4, v11

    .line 283
    .local v4, "var8":[I
    new-array v5, v12, [I

    const v6, -0x101009e

    aput v6, v5, v11

    .line 284
    .local v5, "var10":[I
    const v6, 0x7f0601c2

    const/4 v13, 0x0

    invoke-virtual {v0, v6, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    .line 285
    .end local p4    # "var4":I
    .local v6, "var4":I
    iget-boolean v14, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsLightTheme:Z

    if-eqz v14, :cond_8

    .line 286
    const v3, 0x7f06016f

    goto :goto_3

    .line 288
    :cond_8
    const v3, 0x7f06016e

    .line 291
    :goto_3
    invoke-virtual {v0, v3, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 292
    new-instance v13, Landroid/content/res/ColorStateList;

    new-array v14, v1, [[I

    aput-object v4, v14, v11

    aput-object v5, v14, v12

    new-array v1, v1, [I

    aput v6, v1, v11

    aput v3, v1, v12

    invoke-direct {v13, v14, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v13, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    move v15, v6

    .line 295
    .end local v4    # "var8":[I
    .end local v5    # "var10":[I
    .end local v6    # "var4":I
    .local v15, "var4":I
    :cond_9
    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 296
    if-eqz v1, :cond_a

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->initMuteAnimation()V

    .line 300
    :cond_a
    iget v1, v7, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    .line 301
    .end local v3    # "var3":I
    .local v1, "var3":I
    if-eqz v1, :cond_b

    .line 302
    invoke-virtual {v7, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setMode(I)V

    .line 305
    :cond_b
    return-void
.end method

.method private getScale()F
    .locals 4

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMin()I

    move-result v0

    .line 313
    .local v0, "var1":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    sub-int/2addr v1, v0

    .line 315
    .local v1, "var2":I
    if-lez v1, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getProgress()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    .local v2, "var3":F
    goto :goto_0

    .line 318
    .end local v2    # "var3":F
    :cond_0
    const/4 v2, 0x0

    .line 321
    .restart local v2    # "var3":F
    :goto_0
    return v2
.end method

.method private setHoverPopupGravity(I)V
    .locals 5
    .param p1, "var1"    # I

    .line 325
    sget-boolean v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_1

    .line 326
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    const-string v2, "hidden_setGravity"

    goto :goto_0

    :cond_0
    const-string v2, "setGravity"

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "com.samsung.android.widget.SemHoverPopupWindow"

    invoke-static {v3, v1, v2, v0}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_1
    return-void
.end method

.method private setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "var1"    # Landroid/content/res/ColorStateList;

    .line 332
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 333
    return-void
.end method

.method private setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/res/ColorStateList;

    .line 336
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 338
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->applyThumbTint()V

    .line 339
    return-void
.end method


# virtual methods
.method public final applyThumbTint()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v1, :cond_3

    .line 343
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 344
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 348
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 357
    :cond_3
    return-void
.end method

.method public final applyTickMarkTint()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    if-eqz v1, :cond_3

    .line 361
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 362
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 366
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 375
    :cond_3
    return-void
.end method

.method public final attemptClaimDrag()V
    .locals 2

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 382
    :cond_0
    return-void
.end method

.method public final callSuperSetProgress(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 385
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgress(I)V

    .line 386
    return-void
.end method

.method public canUserSetProgress()Z
    .locals 1

    .line 390
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 393
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 396
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public final cancelMuteAnimation()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    .line 401
    .local v0, "var1":Landroid/animation/AnimatorSet;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 405
    :cond_0
    return-void
.end method

.method public final checkInvalidatedDualColorMode()Z
    .locals 2

    .line 409
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapPoint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 410
    const/4 v0, 0x0

    .local v0, "var1":Z
    goto :goto_0

    .line 412
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x1

    .line 415
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public final colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "var1"    # I

    .line 419
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v2, v1, [[I

    const/4 v3, 0x0

    new-array v4, v3, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    aput p1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public drawThumb(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 423
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 425
    .local v0, "var2":I
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    .line 426
    .local v1, "var3":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 432
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 433
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 436
    .end local v0    # "var2":I
    .end local v1    # "var3":I
    :cond_1
    return-void
.end method

.method public drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 439
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 440
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 441
    .local v0, "var2":I
    const/4 v1, 0x1

    .line 442
    .local v1, "var3":I
    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    .line 443
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 444
    .local v2, "var4":I
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 445
    .local v3, "var5":I
    if-ltz v2, :cond_0

    .line 446
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 448
    :cond_0
    const/4 v2, 0x1

    .line 451
    :goto_0
    if-ltz v3, :cond_1

    .line 452
    div-int/lit8 v1, v3, 0x2

    .line 455
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v1

    invoke-virtual {v4, v5, v6, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    .line 457
    .local v4, "var6":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 458
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 460
    const/4 v2, 0x0

    :goto_1
    if-gt v2, v0, :cond_2

    .line 461
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 462
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 460
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 465
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 469
    .end local v0    # "var2":I
    .end local v1    # "var3":I
    .end local v2    # "var4":I
    .end local v3    # "var5":I
    .end local v4    # "var6":F
    :cond_3
    return-void
.end method

.method public drawTrack(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 473
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 477
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mSplitTrack:Z

    if-eqz v1, :cond_0

    .line 478
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    .line 479
    .local v1, "var3":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 480
    .local v2, "var4":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 481
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 482
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 483
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 484
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 485
    .local v3, "var5":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 486
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 487
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 488
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 490
    .end local v1    # "var3":Landroid/graphics/Rect;
    .end local v2    # "var4":Landroid/graphics/Rect;
    .end local v3    # "var5":I
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 491
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 494
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 495
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 496
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 497
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 498
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 500
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 503
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 504
    .local v1, "var4":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 505
    .local v2, "var3":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 506
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getProgress()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapPoint:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 507
    .local v3, "var6":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMax()I

    move-result v4

    .line 508
    .local v4, "var7":I
    iget v5, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    .line 509
    .local v5, "var5":I
    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    const/4 v6, 0x6

    if-eq v5, v6, :cond_2

    .line 510
    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v3

    int-to-float v9, v4

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 512
    :cond_2
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v3

    int-to-float v9, v4

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 515
    :goto_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 516
    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 517
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 520
    .end local v1    # "var4":Landroid/graphics/Rect;
    .end local v2    # "var3":Landroid/graphics/Rect;
    .end local v3    # "var6":I
    .end local v4    # "var7":I
    .end local v5    # "var5":I
    :cond_3
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 523
    invoke-super {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslProgressBar;->drawableHotspotChanged(FF)V

    .line 524
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 525
    .local v0, "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 526
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 529
    :cond_0
    return-void
.end method

.method public drawableStateChanged()V
    .locals 3

    .line 532
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->drawableStateChanged()V

    .line 533
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 535
    .local v0, "var1":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    const/16 v1, 0xff

    .local v1, "var2":I
    goto :goto_0

    .line 540
    .end local v1    # "var2":I
    :cond_0
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 543
    .restart local v1    # "var2":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 544
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    .line 545
    .local v2, "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 546
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 550
    .end local v1    # "var2":I
    .end local v2    # "var3":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    if-eqz v1, :cond_3

    .line 551
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 552
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    check-cast v2, Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 554
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 555
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateDualColorMode()V

    .line 559
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mSetDualColorMode:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 560
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    .line 561
    .local v1, "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 562
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 566
    .end local v1    # "var3":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 567
    .restart local v1    # "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 568
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 572
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 573
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 576
    :cond_6
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 3

    .line 579
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "stack dump"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "SeslAbsSeekBar"

    const-string v2, "Stack:"

    invoke-static {v1, v2, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 580
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHoverPopupType()I
    .locals 1

    .line 308
    sget-boolean v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->semGetHoverPopupType(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .line 584
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getMax()I
    .locals 2

    .line 588
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 592
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    if-eqz v0, :cond_0

    .line 593
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .local v0, "var1":I
    goto :goto_0

    .line 595
    .end local v0    # "var1":I
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getMax()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    .restart local v0    # "var1":I
    :goto_0
    nop

    .line 601
    return v0

    .line 598
    .end local v0    # "var1":I
    :catchall_0
    move-exception v0

    .line 599
    throw v0

    .line 588
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getMin()I
    .locals 2

    .line 605
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 609
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    if-eqz v0, :cond_0

    .line 610
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getMin()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .local v0, "var1":I
    goto :goto_0

    .line 612
    .end local v0    # "var1":I
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getMin()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    .restart local v0    # "var1":I
    :goto_0
    nop

    .line 618
    return v0

    .line 615
    .end local v0    # "var1":I
    :catchall_0
    move-exception v0

    .line 616
    throw v0

    .line 605
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getProgress()I
    .locals 2

    .line 622
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 626
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    if-eqz v0, :cond_0

    .line 627
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .local v0, "var1":I
    goto :goto_0

    .line 629
    .end local v0    # "var1":I
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getProgress()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    .restart local v0    # "var1":I
    :goto_0
    nop

    .line 635
    return v0

    .line 632
    .end local v0    # "var1":I
    :catchall_0
    move-exception v0

    .line 633
    throw v0

    .line 622
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .line 639
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbBounds()Landroid/graphics/Rect;
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 649
    .local v0, "var1":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .local v1, "var2":Landroid/graphics/Rect;
    goto :goto_0

    .line 652
    .end local v1    # "var2":Landroid/graphics/Rect;
    :cond_0
    const/4 v1, 0x0

    .line 655
    .restart local v1    # "var2":Landroid/graphics/Rect;
    :goto_0
    return-object v1
.end method

.method public getThumbHeight()I
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    .line 663
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTickMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final initDualOverlapDrawable()V
    .locals 8

    .line 687
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    .line 688
    .local v0, "var1":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 689
    new-instance v1, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMinWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 690
    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 691
    new-instance v1, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMinWidth:I

    int-to-float v4, v2

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    int-to-float v5, v2

    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    const/4 v7, 0x1

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 692
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 693
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    .line 696
    :cond_2
    :goto_0
    return-void
.end method

.method public final initMuteAnimation()V
    .locals 10

    .line 699
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v0, "var1":Ljava/util/ArrayList;
    const/16 v1, 0x190

    .line 704
    .local v1, "var2":I
    const/4 v2, 0x0

    .local v2, "var3":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_3

    .line 706
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_0

    .line 707
    const/4 v3, 0x1

    .local v3, "var4":Z
    goto :goto_1

    .line 709
    .end local v3    # "var4":Z
    :cond_0
    const/4 v3, 0x0

    .line 713
    .restart local v3    # "var4":Z
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    .line 714
    new-array v5, v5, [I

    aput v6, v5, v6

    aput v1, v5, v4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .local v4, "var5":Landroid/animation/ValueAnimator;
    goto :goto_2

    .line 716
    .end local v4    # "var5":Landroid/animation/ValueAnimator;
    :cond_1
    new-array v5, v5, [I

    aput v1, v5, v6

    aput v6, v5, v4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 719
    .restart local v4    # "var5":Landroid/animation/ValueAnimator;
    :goto_2
    const-wide/16 v5, 0x3e

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 720
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 721
    new-instance v5, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$1;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 728
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    move v5, v1

    .line 730
    .local v5, "var6":I
    if-eqz v3, :cond_2

    .line 731
    int-to-double v6, v1

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 734
    :cond_2
    nop

    .end local v3    # "var4":Z
    .end local v4    # "var5":Landroid/animation/ValueAnimator;
    add-int/lit8 v2, v2, 0x1

    .line 704
    move v1, v5

    goto :goto_0

    .line 737
    .end local v2    # "var3":I
    .end local v5    # "var6":I
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 738
    return-void
.end method

.method public final initializeExpandMode()V
    .locals 10

    .line 741
    new-instance v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMinWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    .line 742
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;
    new-instance v1, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMinWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    .line 743
    .local v1, "var2":Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;
    new-instance v2, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMinWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    .line 744
    .local v2, "var3":Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;
    new-instance v3, Landroidx/appcompat/graphics/drawable/DrawableWrapper;

    new-instance v4, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;

    iget v5, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbRadius:I

    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    const/4 v7, 0x0

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;ILandroid/content/res/ColorStateList;Z)V

    invoke-direct {v3, v4}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 745
    .local v3, "var4":Landroidx/appcompat/graphics/drawable/DrawableWrapper;
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v5, v7

    new-instance v6, Landroid/graphics/drawable/ClipDrawable;

    const/16 v8, 0x13

    const/4 v9, 0x1

    invoke-direct {v6, v1, v8, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v6, v5, v9

    new-instance v6, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v6, v2, v8, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/4 v8, 0x2

    aput-object v6, v5, v8

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 746
    .local v4, "var7":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v4, v9}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    .line 747
    const v5, 0x7f090052

    invoke-virtual {v4, v7, v5}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 748
    const v5, 0x7f0901b3

    invoke-virtual {v4, v9, v5}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 749
    const v5, 0x7f090190

    invoke-virtual {v4, v8, v5}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 750
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 751
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 752
    const v5, 0x7f08014f

    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setBackgroundResource(I)V

    .line 753
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMaxHeight()I

    move-result v5

    .line 754
    .local v5, "var5":I
    iget v6, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    .line 755
    .local v6, "var6":I
    if-le v5, v6, :cond_0

    .line 756
    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setMaxHeight(I)V

    .line 759
    :cond_0
    return-void
.end method

.method public final initializeExpandVerticalMode()V
    .locals 11

    .line 762
    new-instance v6, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;

    iget v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMinWidth:I

    int-to-float v2, v0

    iget v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    int-to-float v3, v0

    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V

    .line 763
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;
    new-instance v7, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMinWidth:I

    int-to-float v3, v1

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    int-to-float v4, v1

    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V

    .line 764
    .local v1, "var2":Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;
    new-instance v8, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMinWidth:I

    int-to-float v4, v2

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    int-to-float v5, v2

    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    const/4 v7, 0x1

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V

    .line 765
    .local v2, "var3":Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;
    new-instance v3, Landroidx/appcompat/graphics/drawable/DrawableWrapper;

    new-instance v4, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;

    iget v5, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbRadius:I

    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;ILandroid/content/res/ColorStateList;Z)V

    invoke-direct {v3, v4}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 766
    .local v3, "var4":Landroidx/appcompat/graphics/drawable/DrawableWrapper;
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    new-instance v8, Landroid/graphics/drawable/ClipDrawable;

    const/16 v9, 0x51

    const/4 v10, 0x2

    invoke-direct {v8, v1, v9, v10}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v8, v5, v7

    new-instance v8, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v8, v2, v9, v10}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v8, v5, v10

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 767
    .local v4, "var7":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    .line 768
    const v5, 0x7f090052

    invoke-virtual {v4, v6, v5}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 769
    const v5, 0x7f0901b3

    invoke-virtual {v4, v7, v5}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 770
    const v5, 0x7f090190

    invoke-virtual {v4, v10, v5}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 771
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 772
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 773
    const v5, 0x7f08014f

    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setBackgroundResource(I)V

    .line 774
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMaxWidth()I

    move-result v5

    .line 775
    .local v5, "var5":I
    iget v6, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    .line 776
    .local v6, "var6":I
    if-le v5, v6, :cond_0

    .line 777
    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setMaxWidth(I)V

    .line 780
    :cond_0
    return-void
.end method

.method public final isHoverPopupTypeUserCustom(I)Z
    .locals 1
    .param p1, "var1"    # I

    .line 784
    sget-boolean v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 785
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 787
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 790
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 794
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->jumpDrawablesToCurrentState()V

    .line 795
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 796
    .local v0, "var1":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 801
    if-eqz v0, :cond_1

    .line 802
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 805
    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 808
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 811
    :try_start_1
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 812
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->supportIsHoveringUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getHoverPopupType()I

    move-result v0

    .line 814
    .local v0, "var2":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->isHoverPopupTypeUserCustom(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    if-eq v1, v0, :cond_0

    .line 815
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    .line 816
    const/16 v1, 0x3231

    invoke-direct {p0, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setHoverPopupGravity(I)V

    .line 817
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setHoverPopupOffset(II)V

    .line 818
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setHoverPopupDetectTime()V

    .line 822
    .end local v0    # "var2":I
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 823
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 824
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 827
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    if-nez v0, :cond_2

    .line 828
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 832
    :cond_2
    nop

    .line 834
    return-void

    .line 831
    :catchall_0
    move-exception v0

    .line 832
    throw v0

    .line 808
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onHoverChanged(III)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 837
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 840
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->supportIsHoveringUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 841
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 842
    .local v0, "var2":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 843
    .local v1, "var3":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 844
    .local v2, "var4":I
    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    .line 845
    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    .line 846
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 847
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onStopTrackingHover()V

    goto :goto_0

    .line 850
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->trackHoverEvent(I)V

    .line 851
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onStartTrackingHover(III)V

    goto :goto_0

    .line 854
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->trackHoverEvent(I)V

    .line 855
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onHoverChanged(III)V

    .line 856
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getHoverPopupType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->isHoverPopupTypeUserCustom(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 857
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setHoveringPoint(II)V

    .line 858
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateHoverPopup()V

    .line 863
    .end local v0    # "var2":I
    .end local v1    # "var3":I
    .end local v2    # "var4":I
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 867
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 868
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    .line 870
    .local v0, "var2":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMin()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 871
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 874
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 875
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 879
    .end local v0    # "var2":I
    :cond_1
    return-void
.end method

.method public onKeyChange()V
    .locals 0

    .line 882
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/view/KeyEvent;

    .line 886
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 887
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    .line 888
    .local v0, "var3":I
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    .line 889
    .local v1, "var4":I
    const/4 v2, 0x3

    const/16 v3, 0x51

    const/16 v4, 0x46

    const/high16 v5, 0x447a0000    # 1000.0f

    const/16 v6, 0x45

    const/4 v7, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5

    .line 891
    const/16 v2, 0x15

    if-eq p1, v2, :cond_1

    .line 892
    move v1, v0

    .line 893
    const/16 v2, 0x16

    if-ne p1, v2, :cond_0

    .line 894
    goto :goto_0

    .line 897
    :cond_0
    if-eq p1, v6, :cond_1

    .line 898
    move v1, v0

    .line 899
    if-eq p1, v4, :cond_2

    .line 900
    move v1, v0

    .line 901
    if-eq p1, v3, :cond_2

    .line 902
    invoke-super {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 909
    :cond_1
    neg-int v1, v0

    .line 912
    :cond_2
    :goto_0
    move v0, v1

    .line 913
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 914
    neg-int v0, v1

    .line 917
    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    if-eqz v2, :cond_4

    .line 918
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getProgress()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1

    .line 920
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getProgress()I

    move-result v2

    add-int v1, v0, v2

    .line 923
    :goto_1
    invoke-virtual {p0, v1, v7, v7}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 924
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onKeyChange()V

    .line 925
    return v7

    .line 928
    :cond_5
    move v1, v0

    .line 929
    const/16 v2, 0x13

    if-eq p1, v2, :cond_7

    .line 930
    const/16 v2, 0x14

    if-eq p1, v2, :cond_6

    if-eq p1, v6, :cond_6

    .line 931
    move v1, v0

    .line 932
    if-eq p1, v4, :cond_7

    .line 933
    move v1, v0

    .line 934
    if-eq p1, v3, :cond_7

    .line 935
    invoke-super {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 939
    :cond_6
    neg-int v1, v0

    .line 943
    :cond_7
    move v0, v1

    .line 944
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 945
    neg-int v0, v1

    .line 948
    :cond_8
    iget-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    if-eqz v2, :cond_9

    .line 949
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getProgress()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_2

    .line 951
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getProgress()I

    move-result v2

    add-int v1, v0, v2

    .line 954
    :goto_2
    invoke-virtual {p0, v1, v7, v7}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 955
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onKeyChange()V

    .line 956
    return v7

    .line 961
    .end local v0    # "var3":I
    .end local v1    # "var4":I
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMeasure(II)V
    .locals 10
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 965
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 972
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 977
    .local v0, "var3":Landroid/graphics/drawable/Drawable;
    nop

    .line 982
    if-eqz v0, :cond_3

    .line 987
    :try_start_2
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 988
    nop

    .line 1000
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    .line 1001
    nop

    .line 1014
    :try_start_4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1019
    .local v1, "var4":I
    goto :goto_0

    .line 1015
    .end local v1    # "var4":I
    :catchall_0
    move-exception v1

    .line 1016
    .local v1, "var95":Ljava/lang/Throwable;
    move-object v2, v1

    .line 1017
    .local v2, "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1018
    .local v3, "var10001":Z
    goto/16 :goto_3

    .line 1007
    .end local v1    # "var95":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    :cond_0
    nop

    .line 1009
    const/4 v1, 0x0

    .line 1010
    .local v1, "var4":I
    nop

    .line 1023
    :goto_0
    :try_start_5
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinWidth:I

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1024
    .local v2, "var5":I
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v1, v3

    .line 1025
    goto :goto_2

    .line 1026
    .end local v2    # "var5":I
    :catchall_1
    move-exception v2

    .line 1027
    .local v2, "var94":Ljava/lang/Throwable;
    move-object v3, v2

    .line 1028
    .local v3, "var10000":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 1029
    .local v4, "var10001":Z
    goto/16 :goto_3

    .line 1003
    .end local v1    # "var4":I
    .end local v2    # "var94":Ljava/lang/Throwable;
    .end local v3    # "var10000":Ljava/lang/Throwable;
    .end local v4    # "var10001":Z
    :catchall_2
    move-exception v1

    .line 1004
    .local v1, "var96":Ljava/lang/Throwable;
    move-object v2, v1

    .line 1005
    .local v2, "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1006
    .local v3, "var10001":Z
    goto/16 :goto_3

    .line 990
    .end local v1    # "var96":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    :cond_1
    nop

    .line 1036
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez v1, :cond_2

    .line 1037
    nop

    .line 1055
    const/4 v1, 0x0

    .local v1, "var4":I
    goto :goto_1

    .line 1043
    .end local v1    # "var4":I
    :cond_2
    nop

    .line 1046
    :try_start_7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1047
    .restart local v1    # "var4":I
    nop

    .line 1059
    :goto_1
    :try_start_8
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinWidth:I

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1060
    .local v2, "var6":I
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1061
    .local v3, "var5":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move v2, v4

    .line 1066
    nop

    .line 1068
    move v1, v3

    .line 1069
    move v3, v2

    goto :goto_2

    .line 1062
    .end local v2    # "var6":I
    .end local v3    # "var5":I
    :catchall_3
    move-exception v2

    .line 1063
    .local v2, "var92":Ljava/lang/Throwable;
    move-object v3, v2

    .line 1064
    .local v3, "var10000":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 1065
    .restart local v4    # "var10001":Z
    goto :goto_3

    .line 1048
    .end local v1    # "var4":I
    .end local v2    # "var92":Ljava/lang/Throwable;
    .end local v3    # "var10000":Ljava/lang/Throwable;
    .end local v4    # "var10001":Z
    :catchall_4
    move-exception v1

    .line 1049
    .local v1, "var93":Ljava/lang/Throwable;
    move-object v2, v1

    .line 1050
    .local v2, "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1051
    .local v3, "var10001":Z
    goto :goto_3

    .line 1039
    .end local v1    # "var93":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    :catchall_5
    move-exception v1

    .line 1040
    .local v1, "var97":Ljava/lang/Throwable;
    move-object v2, v1

    .line 1041
    .restart local v2    # "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1042
    .restart local v3    # "var10001":Z
    goto :goto_3

    .line 991
    .end local v1    # "var97":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    :catchall_6
    move-exception v1

    .line 992
    .local v1, "var98":Ljava/lang/Throwable;
    move-object v2, v1

    .line 993
    .restart local v2    # "var10000":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 994
    .restart local v3    # "var10001":Z
    goto :goto_3

    .line 1072
    .end local v1    # "var98":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local v3    # "var10001":Z
    :cond_3
    const/4 v1, 0x0

    .line 1073
    .local v1, "var4":I
    move v2, v1

    .line 1078
    .local v2, "var5":I
    :goto_2
    :try_start_9
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v3

    .line 1079
    .local v3, "var7":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v4

    .line 1080
    .local v4, "var6":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v5

    .line 1081
    .local v5, "var8":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v6

    .line 1082
    .local v6, "var9":I
    add-int v7, v2, v3

    add-int/2addr v7, v4

    const/4 v8, 0x0

    invoke-static {v7, p1, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    add-int v9, v1, v5

    add-int/2addr v9, v6

    invoke-static {v9, p2, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setMeasuredDimension(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 1083
    return-void

    .line 1084
    .end local v3    # "var7":I
    .end local v4    # "var6":I
    .end local v5    # "var8":I
    .end local v6    # "var9":I
    :catchall_7
    move-exception v3

    .line 1085
    .local v3, "var91":Ljava/lang/Throwable;
    move-object v4, v3

    .line 1086
    .local v4, "var10000":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 1087
    .local v5, "var10001":Z
    move-object v2, v4

    goto :goto_3

    .line 973
    .end local v0    # "var3":Landroid/graphics/drawable/Drawable;
    .end local v1    # "var4":I
    .end local v2    # "var5":I
    .end local v3    # "var91":Ljava/lang/Throwable;
    .end local v4    # "var10000":Ljava/lang/Throwable;
    .end local v5    # "var10001":Z
    :catchall_8
    move-exception v0

    .line 974
    .local v0, "var99":Ljava/lang/Throwable;
    move-object v2, v0

    .line 975
    .local v2, "var10000":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 976
    .local v1, "var10001":Z
    nop

    .line 1091
    .end local v0    # "var99":Ljava/lang/Throwable;
    .end local v1    # "var10001":Z
    :goto_3
    move-object v0, v2

    .line 1093
    .local v0, "var100":Ljava/lang/Throwable;
    nop

    .end local v2    # "var10000":Ljava/lang/Throwable;
    .end local p1    # "var1":I
    .end local p2    # "var2":I
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 1094
    .restart local v2    # "var10000":Ljava/lang/Throwable;
    .restart local p1    # "var1":I
    .restart local p2    # "var2":I
    :catchall_9
    move-exception v1

    .line 1095
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1097
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-void

    .line 965
    .end local v0    # "var100":Ljava/lang/Throwable;
    .end local v2    # "var10000":Ljava/lang/Throwable;
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    throw v0
.end method

.method public onProgressRefresh(FZI)V
    .locals 5
    .param p1, "var1"    # F
    .param p2, "var2"    # Z
    .param p3, "var3"    # I

    .line 1100
    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1102
    .local v0, "var4":I
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mUseMuteAnimation:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    if-nez v1, :cond_0

    .line 1103
    const/4 v1, 0x1

    .local v1, "var5":Z
    goto :goto_0

    .line 1105
    .end local v1    # "var5":Z
    :cond_0
    const/4 v1, 0x0

    .line 1108
    .restart local v1    # "var5":Z
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 1109
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->startMuteAnimation()V

    goto :goto_1

    .line 1111
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->cancelMuteAnimation()V

    .line 1112
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    .line 1113
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    .line 1114
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/ui/widget/SeslProgressBar;->onProgressRefresh(FZI)V

    .line 1115
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1116
    .local v2, "var6":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 1117
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-virtual {p0, v3, v2, p1, v4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1118
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->invalidate()V

    .line 1122
    .end local v2    # "var6":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 1125
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->onRtlPropertiesChanged(I)V

    .line 1126
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1127
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1129
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->invalidate()V

    .line 1132
    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 1135
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/widget/SeslProgressBar;->onSizeChanged(IIII)V

    .line 1136
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 1137
    return-void
.end method

.method public onSlidingRefresh(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 1140
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->onSlidingRefresh(I)V

    .line 1141
    int-to-float v0, p1

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    .line 1142
    .local v0, "var2":F
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1143
    .local v1, "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 1144
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1145
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->invalidate()V

    .line 1148
    :cond_0
    return-void
.end method

.method public onStartTrackingHover(III)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 1151
    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 1

    .line 1154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsDragging:Z

    .line 1155
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 1156
    .local v0, "var1":Landroid/animation/ValueAnimator;
    if-eqz v0, :cond_0

    .line 1157
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1160
    :cond_0
    return-void
.end method

.method public onStopTrackingHover()V
    .locals 0

    .line 1163
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 4

    .line 1166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsDragging:Z

    .line 1167
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    const/high16 v2, 0x447a0000    # 1000.0f

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1168
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1169
    .local v1, "var1":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getProgress()I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 1170
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1171
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;->SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1172
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1173
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$2;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .end local v1    # "var1":I
    goto :goto_0

    .line 1178
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    if-eqz v0, :cond_1

    .line 1179
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setProgress(I)V

    goto :goto_1

    .line 1178
    :cond_1
    :goto_0
    nop

    .line 1182
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 1185
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1187
    .local v0, "var2":I
    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    .line 1188
    if-eq v0, v3, :cond_7

    .line 1189
    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v0, v4, :cond_1

    .line 1190
    if-ne v0, v5, :cond_c

    .line 1191
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 1192
    iget-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_0

    .line 1193
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    .line 1194
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setPressed(Z)V

    .line 1197
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 1200
    :cond_1
    iput-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 1201
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsDragging:Z

    if-eqz v1, :cond_2

    .line 1202
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1204
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1205
    .local v1, "var3":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1206
    .local v4, "var4":F
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    .line 1207
    if-eq v0, v5, :cond_3

    if-eq v0, v2, :cond_3

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTouchDownX:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mScaledTouchSlop:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    .line 1208
    :cond_3
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    .line 1209
    if-eq v0, v5, :cond_4

    if-ne v0, v2, :cond_5

    :cond_4
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTouchDownY:F

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mScaledTouchSlop:I

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_6

    .line 1210
    :cond_5
    return v3

    .line 1214
    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    .line 1215
    .end local v1    # "var3":F
    .end local v4    # "var4":F
    goto :goto_1

    .line 1218
    :cond_7
    iget-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v2, :cond_8

    .line 1219
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 1222
    :cond_8
    iget-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_9

    .line 1223
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1224
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    .line 1225
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setPressed(Z)V

    goto :goto_0

    .line 1227
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onStartTrackingTouch()V

    .line 1228
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1229
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    .line 1232
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->invalidate()V

    goto :goto_1

    .line 1235
    :cond_a
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 1236
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    .line 1237
    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    if-eq v0, v2, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->supportIsInScrollingContainer()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1238
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1240
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTouchDownX:F

    .line 1241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTouchDownY:F

    .line 1245
    :cond_c
    :goto_1
    return v3

    .line 1247
    .end local v0    # "var2":I
    :cond_d
    return v1
.end method

.method public onVisualProgressChanged(IF)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # F

    .line 1252
    invoke-super {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslProgressBar;->onVisualProgressChanged(IF)V

    .line 1253
    const v0, 0x7f090190

    if-ne p1, v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1255
    .local v0, "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1256
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-virtual {p0, v1, v0, p2, v2}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1257
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->invalidate()V

    .line 1261
    .end local v0    # "var3":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/os/Bundle;

    .line 1264
    invoke-super {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslProgressBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1265
    return v1

    .line 1266
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1267
    return v2

    .line 1268
    :cond_1
    const/16 v0, 0x1000

    const/16 v3, 0x2000

    if-eq p1, v0, :cond_5

    if-eq p1, v3, :cond_5

    .line 1269
    const v0, 0x102003d

    if-eq p1, v0, :cond_2

    .line 1270
    return v2

    .line 1271
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1272
    return v2

    .line 1274
    :cond_3
    if-eqz p2, :cond_4

    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v2

    :cond_4
    return v2

    .line 1276
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1277
    return v2

    .line 1279
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMin()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1280
    .local v0, "var3":I
    move v4, v0

    .line 1281
    .local v4, "var4":I
    if-ne p1, v3, :cond_7

    .line 1282
    neg-int v4, v0

    .line 1285
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getProgress()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {p0, v3, v1, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1286
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onKeyChange()V

    .line 1287
    return v1

    .line 1289
    :cond_8
    return v2
.end method

.method public final setHotspot(FF)V
    .locals 1
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 1295
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1296
    .local v0, "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1297
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 1300
    :cond_0
    return-void
.end method

.method public final setHoverPopupDetectTime()V
    .locals 5

    .line 1303
    sget-boolean v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_1

    .line 1304
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    const-string v2, "hidden_setHoverDetectTime"

    goto :goto_0

    :cond_0
    const-string v2, "setHoverDetectTime"

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "com.samsung.android.widget.SemHoverPopupWindow"

    invoke-static {v3, v1, v2, v0}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    :cond_1
    return-void
.end method

.method public final setHoverPopupOffset(II)V
    .locals 6
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1310
    sget-boolean v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_1

    .line 1311
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    const-string v2, "hidden_setOffset"

    goto :goto_0

    :cond_0
    const-string v2, "setOffset"

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "com.samsung.android.widget.SemHoverPopupWindow"

    invoke-static {v0, v1, v2, v3}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    :cond_1
    return-void
.end method

.method public final setHoveringPoint(II)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1317
    sget-boolean v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 1318
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "com.samsung.android.widget.SemHoverPopupWindow"

    const-string v2, "setHoveringPoint"

    invoke-static {v1, p0, v2, v0}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    :cond_0
    return-void
.end method

.method public setKeyProgressIncrement(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1324
    move v0, p1

    .line 1325
    .local v0, "var2":I
    if-gez p1, :cond_0

    .line 1326
    neg-int v0, p1

    .line 1329
    :cond_0
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    .line 1330
    return-void
.end method

.method public setMax(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 1333
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1334
    move v0, p1

    .line 1337
    .local v0, "var2":I
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    if-eqz v1, :cond_0

    .line 1338
    int-to-float v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v0, v1

    .line 1341
    :cond_0
    invoke-super {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setMax(I)V

    .line 1342
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    .line 1343
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMax()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMin()I

    move-result v3

    sub-int p1, v2, v3

    .line 1344
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v2, :cond_1

    div-int v2, p1, v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_2

    .line 1345
    :cond_1
    int-to-float v2, p1

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1349
    :cond_2
    nop

    .line 1351
    return-void

    .line 1348
    :catchall_0
    move-exception v1

    .line 1349
    throw v1

    .line 1333
    .end local v0    # "var2":I
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setMin(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 1354
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1355
    move v0, p1

    .line 1358
    .local v0, "var2":I
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    if-eqz v1, :cond_0

    .line 1359
    int-to-float v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v0, v1

    .line 1362
    :cond_0
    invoke-super {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setMin(I)V

    .line 1363
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMin()I

    move-result v2

    sub-int p1, v1, v2

    .line 1364
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_1

    div-int v1, p1, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_2

    .line 1365
    :cond_1
    const/4 v1, 0x1

    int-to-float v2, p1

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1369
    :cond_2
    nop

    .line 1371
    return-void

    .line 1368
    :catchall_0
    move-exception v1

    .line 1369
    throw v1

    .line 1354
    .end local v0    # "var2":I
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "var1"    # I

    .line 1374
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setMode(I)V

    .line 1375
    if-eqz p1, :cond_5

    .line 1376
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 1377
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    .line 1378
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 1379
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 1380
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 1381
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->initializeExpandVerticalMode()V

    goto :goto_1

    .line 1384
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->initializeExpandMode()V

    goto :goto_1

    .line 1387
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08015e

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 1388
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08015f

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1389
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateSplitProgress()V

    goto :goto_1

    .line 1392
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1393
    .local v0, "var2":Landroid/content/res/Resources;
    iget-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsLightTheme:Z

    if-eqz v2, :cond_3

    .line 1394
    const p1, 0x7f080147

    goto :goto_0

    .line 1396
    :cond_3
    const p1, 0x7f080146

    .line 1399
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1400
    .end local v0    # "var2":Landroid/content/res/Resources;
    goto :goto_1

    .line 1402
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateWarningMode(I)V

    goto :goto_1

    .line 1405
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1406
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1409
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->invalidate()V

    .line 1410
    return-void
.end method

.method public setOverlapBackgroundForDualColor(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 1413
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1414
    .local v0, "var2":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1415
    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 1418
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 1419
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mLargeFont:Z

    .line 1420
    return-void
.end method

.method public setOverlapPointForDualColor(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1423
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mSetDualColorMode:Z

    .line 1425
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapPoint:I

    .line 1426
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1428
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1430
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1431
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->initDualOverlapDrawable()V

    .line 1434
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateDualColorMode()V

    .line 1437
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->invalidate()V

    .line 1439
    :cond_2
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "var1"    # I

    .line 1442
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1443
    move v0, p1

    .line 1446
    .local v0, "var2":I
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    if-eqz v1, :cond_0

    .line 1447
    int-to-float v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v0, v1

    .line 1450
    :cond_0
    invoke-super {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgress(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1453
    nop

    .line 1455
    return-void

    .line 1452
    :catchall_0
    move-exception v1

    .line 1453
    throw v1

    .line 1442
    .end local v0    # "var2":I
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 1458
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1459
    return-void
.end method

.method public setProgressInternal(IZZ)Z
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # Z
    .param p3, "var3"    # Z

    .line 1462
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgressInternal(IZZ)Z

    move-result p2

    .line 1463
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateWarningMode(I)V

    .line 1464
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateDualColorMode()V

    .line 1465
    return p2
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "var1"    # Landroid/content/res/ColorStateList;

    .line 1469
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1470
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 1471
    return-void
.end method

.method public setSeamless(Z)V
    .locals 2
    .param p1, "var1"    # Z

    .line 1474
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    if-eq v0, p1, :cond_1

    .line 1475
    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    .line 1476
    const/high16 v0, 0x447a0000    # 1000.0f

    if-eqz p1, :cond_0

    .line 1477
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-super {p0, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setMax(I)V

    .line 1478
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getMin()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-super {p0, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setMin(I)V

    .line 1479
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-super {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgress(I)V

    goto :goto_0

    .line 1481
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-super {p0, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgress(I)V

    .line 1482
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-super {p0, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setMax(I)V

    .line 1483
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getMin()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-super {p0, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setMin(I)V

    .line 1487
    :cond_1
    :goto_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 1490
    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mSplitTrack:Z

    .line 1491
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->invalidate()V

    .line 1492
    return-void
.end method

.method public setSystemGestureExclusionRects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1496
    .local p1, "var1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const-string v0, "rects must not be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    .line 1498
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateGestureExclusionRects()V

    .line 1499
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 1502
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1504
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 1505
    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1506
    const/4 v1, 0x1

    .local v1, "var3":Z
    goto :goto_0

    .line 1508
    .end local v1    # "var3":Z
    :cond_0
    const/4 v1, 0x0

    .line 1511
    .restart local v1    # "var3":Z
    :goto_0
    if-eqz p1, :cond_4

    .line 1512
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1513
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1514
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    invoke-static {p1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1517
    :cond_1
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    .line 1518
    .local v2, "var4":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    .line 1519
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbOffset:I

    goto :goto_1

    .line 1521
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbOffset:I

    .line 1524
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 1525
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->requestLayout()V

    .line 1529
    .end local v2    # "var4":I
    :cond_4
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1530
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->applyThumbTint()V

    .line 1531
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->invalidate()V

    .line 1532
    if-eqz v1, :cond_5

    .line 1533
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 1534
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1535
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1539
    :cond_5
    return-void
.end method

.method public setThumbOffset(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 1542
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbOffset:I

    .line 1543
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->invalidate()V

    .line 1544
    return-void
.end method

.method public final setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 10
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/graphics/drawable/Drawable;
    .param p3, "var3"    # F
    .param p4, "var4"    # I

    .line 1548
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    .line 1549
    .local v0, "var5":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    .line 1550
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v1

    .line 1551
    .local v1, "var6":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v2

    .line 1552
    .local v2, "var7":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1553
    .local v3, "var8":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1554
    sub-int v4, p1, v1

    sub-int/2addr v4, v2

    sub-int/2addr v4, v3

    iget v5, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 1555
    .end local v2    # "var7":I
    .local v4, "var7":I
    int-to-float v2, v4

    mul-float/2addr v2, p3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v1, v2

    .line 1556
    const/high16 v2, -0x80000000

    if-ne p4, v2, :cond_0

    .line 1557
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1558
    .local v2, "var9":Landroid/graphics/Rect;
    iget p4, v2, Landroid/graphics/Rect;->top:I

    .line 1559
    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1560
    .end local v2    # "var9":Landroid/graphics/Rect;
    goto :goto_0

    .line 1561
    :cond_0
    add-int p1, v0, p4

    .line 1564
    :goto_0
    move v0, v1

    .line 1565
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1566
    move v0, v1

    .line 1567
    iget-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_1

    .line 1568
    sub-int v0, v4, v1

    .line 1572
    :cond_1
    add-int v1, v0, v3

    .line 1573
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1574
    .local v2, "var11":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 1575
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int v4, v5, v6

    .line 1576
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v5

    .line 1577
    .local v5, "var10":I
    add-int v6, v0, v4

    add-int v7, p4, v5

    add-int v8, v4, v1

    add-int v9, v5, p1

    invoke-static {v2, v6, v7, v8, v9}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1580
    .end local v5    # "var10":I
    :cond_2
    invoke-virtual {p2, v0, p4, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1581
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateGestureExclusionRects()V

    .line 1582
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v6

    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbPosX:I

    .line 1583
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateSplitProgress()V

    .line 1584
    .end local v1    # "var6":I
    .end local v2    # "var11":Landroid/graphics/drawable/Drawable;
    .end local v3    # "var8":I
    .end local v4    # "var7":I
    goto :goto_1

    .line 1585
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1587
    :goto_1
    return-void
.end method

.method public final setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 10
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/graphics/drawable/Drawable;
    .param p3, "var3"    # F
    .param p4, "var4"    # I

    .line 1590
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v0

    .line 1591
    .local v0, "var5":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v1

    .line 1592
    .local v1, "var6":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1593
    .local v2, "var7":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 1594
    .local v3, "var8":I
    sub-int v4, p1, v0

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    iget v5, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 1595
    .end local v1    # "var6":I
    .local v4, "var6":I
    int-to-float v1, v4

    mul-float/2addr v1, p3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v1, v5

    float-to-int v0, v1

    .line 1596
    const/high16 v1, -0x80000000

    if-ne p4, v1, :cond_0

    .line 1597
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1598
    .local v1, "var9":Landroid/graphics/Rect;
    iget p4, v1, Landroid/graphics/Rect;->left:I

    .line 1599
    iget p1, v1, Landroid/graphics/Rect;->right:I

    .line 1600
    .end local v1    # "var9":Landroid/graphics/Rect;
    goto :goto_0

    .line 1601
    :cond_0
    add-int p1, p4, v2

    .line 1604
    :goto_0
    sub-int v0, v4, v0

    .line 1605
    add-int/2addr v3, v0

    .line 1606
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1607
    .local v1, "var11":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 1608
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v5

    .line 1609
    .local v5, "var10":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int v4, v6, v7

    .line 1610
    add-int v6, p4, v5

    add-int v7, v0, v4

    add-int v8, v5, p1

    add-int v9, v4, v3

    invoke-static {v1, v6, v7, v8, v9}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1613
    .end local v5    # "var10":I
    :cond_1
    invoke-virtual {p2, p4, v0, p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1614
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbPosX:I

    .line 1615
    return-void
.end method

.method public setThumbTintColor(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 1618
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1619
    .local v0, "var2":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1620
    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 1623
    :cond_0
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/res/ColorStateList;

    .line 1626
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 1627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 1628
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->applyThumbTint()V

    .line 1629
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 1630
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/PorterDuff$Mode;

    .line 1633
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    .line 1635
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->applyThumbTint()V

    .line 1636
    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 1639
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 1640
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1641
    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1644
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 1645
    if-eqz p1, :cond_2

    .line 1646
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1647
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1648
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1649
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1652
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    .line 1655
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->invalidate()V

    .line 1656
    return-void
.end method

.method public setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/res/ColorStateList;

    .line 1659
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 1660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    .line 1661
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    .line 1662
    return-void
.end method

.method public setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/PorterDuff$Mode;

    .line 1665
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    .line 1667
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    .line 1668
    return-void
.end method

.method public final startDrag(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 1671
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setPressed(Z)V

    .line 1672
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1673
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1674
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 1677
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onStartTrackingTouch()V

    .line 1678
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1679
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->attemptClaimDrag()V

    .line 1680
    return-void
.end method

.method public final startMuteAnimation()V
    .locals 1

    .line 1683
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->cancelMuteAnimation()V

    .line 1684
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    .line 1685
    .local v0, "var1":Landroid/animation/AnimatorSet;
    if-eqz v0, :cond_0

    .line 1686
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1689
    :cond_0
    return-void
.end method

.method public final supportIsHoveringUIEnabled()Z
    .locals 3

    .line 1693
    sget-boolean v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    const-class v0, Landroid/view/View;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isHoveringUIEnabled"

    invoke-static {v0, p0, v2, v1}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1694
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 1696
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 1699
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public final supportIsInScrollingContainer()Z
    .locals 3

    .line 1703
    const-class v0, Landroid/view/View;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isInScrollingContainer"

    invoke-static {v0, p0, v2, v1}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final trackHoverEvent(I)V
    .locals 7
    .param p1, "var1"    # I

    .line 1707
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getWidth()I

    move-result v0

    .line 1708
    .local v0, "var2":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v1

    .line 1709
    .local v1, "var3":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v2

    .line 1710
    .local v2, "var4":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v3

    .line 1711
    .local v3, "var5":I
    const/4 v4, 0x0

    .line 1713
    .local v4, "var6":F
    if-ge p1, v3, :cond_0

    .line 1714
    const/4 v5, 0x0

    .local v5, "var7":F
    goto :goto_0

    .line 1715
    .end local v5    # "var7":F
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    if-le p1, v5, :cond_1

    .line 1716
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "var7":F
    goto :goto_0

    .line 1718
    .end local v5    # "var7":F
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v5

    sub-int v5, p1, v5

    int-to-float v5, v5

    sub-int v6, v0, v1

    sub-int/2addr v6, v2

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1719
    .restart local v5    # "var7":F
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTouchProgressOffset:F

    .line 1722
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    add-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mHoveringLevel:I

    .line 1723
    return-void
.end method

.method public final trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 1727
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    .line 1728
    .local v0, "var2":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    .line 1736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1737
    .local v1, "var3":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1738
    .local v2, "var4":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getWidth()I

    move-result v0

    .line 1739
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1740
    .local v3, "var5":I
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_1

    .line 1741
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v4

    sub-int v4, v0, v4

    if-le v1, v4, :cond_0

    .line 1742
    goto :goto_0

    .line 1745
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v4

    if-lt v1, v4, :cond_3

    .line 1746
    sub-int v4, v3, v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v3

    div-float/2addr v4, v5

    .line 1747
    .local v4, "var6":F
    iget v5, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTouchProgressOffset:F

    .line 1748
    .local v5, "var7":F
    goto :goto_1

    .line 1751
    .end local v4    # "var6":F
    .end local v5    # "var7":F
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1752
    nop

    .line 1767
    :goto_0
    const/4 v4, 0x0

    .line 1768
    .restart local v4    # "var6":F
    move v5, v4

    .restart local v5    # "var7":F
    goto :goto_1

    .line 1755
    .end local v4    # "var6":F
    .end local v5    # "var7":F
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v4

    sub-int v4, v0, v4

    if-gt v1, v4, :cond_3

    .line 1756
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v4

    sub-int v4, v1, v4

    int-to-float v4, v4

    int-to-float v5, v3

    div-float/2addr v4, v5

    .line 1757
    .restart local v4    # "var6":F
    iget v5, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTouchProgressOffset:F

    .line 1758
    .restart local v5    # "var7":F
    goto :goto_1

    .line 1762
    .end local v4    # "var6":F
    .end local v5    # "var7":F
    :cond_3
    const/4 v5, 0x0

    .line 1763
    .restart local v5    # "var7":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1764
    .restart local v4    # "var6":F
    nop

    .line 1774
    :goto_1
    iget-boolean v6, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mIsSeamless:Z

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v6, :cond_5

    .line 1775
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getMax()I

    move-result v0

    .line 1776
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getMin()I

    move-result v3

    .line 1777
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v9, v6

    .line 1778
    .local v6, "var8":F
    move v10, v4

    .line 1779
    .local v10, "var9":F
    cmpl-float v8, v4, v8

    if-lez v8, :cond_4

    .line 1780
    move v10, v4

    .line 1781
    cmpg-float v8, v4, v9

    if-gez v8, :cond_4

    .line 1782
    rem-float v8, v4, v6

    .line 1783
    .local v8, "var10":F
    move v10, v4

    .line 1784
    div-float v7, v6, v7

    cmpl-float v7, v8, v7

    if-lez v7, :cond_4

    .line 1785
    sub-float v7, v6, v8

    add-float v10, v4, v7

    .line 1790
    .end local v8    # "var10":F
    :cond_4
    sub-int v7, v0, v3

    int-to-float v7, v7

    mul-float/2addr v7, v10

    .line 1791
    .end local v4    # "var6":F
    .local v7, "var6":F
    invoke-super {p0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getMin()I

    move-result v0

    goto :goto_3

    .line 1793
    .end local v6    # "var8":F
    .end local v7    # "var6":F
    .end local v10    # "var9":F
    .restart local v4    # "var6":F
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMax()I

    move-result v3

    .line 1794
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMin()I

    move-result v0

    .line 1795
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v9, v6

    .line 1796
    .restart local v6    # "var8":F
    move v10, v4

    .line 1797
    .restart local v10    # "var9":F
    cmpl-float v8, v4, v8

    if-lez v8, :cond_8

    .line 1798
    move v8, v4

    .line 1799
    .end local v10    # "var9":F
    .local v8, "var9":F
    cmpg-float v9, v4, v9

    if-gez v9, :cond_7

    .line 1800
    rem-float v9, v4, v6

    .line 1801
    .local v9, "var10":F
    move v8, v4

    .line 1802
    div-float v7, v6, v7

    cmpl-float v7, v9, v7

    if-lez v7, :cond_6

    .line 1803
    sub-float v7, v6, v9

    add-float/2addr v7, v4

    move v10, v7

    .end local v8    # "var9":F
    .local v7, "var9":F
    goto :goto_2

    .line 1802
    .end local v7    # "var9":F
    .restart local v8    # "var9":F
    :cond_6
    move v10, v8

    goto :goto_2

    .line 1799
    .end local v9    # "var10":F
    :cond_7
    move v10, v8

    .line 1808
    .end local v8    # "var9":F
    .restart local v10    # "var9":F
    :cond_8
    :goto_2
    sub-int v7, v3, v0

    int-to-float v7, v7

    mul-float/2addr v7, v10

    .line 1809
    .end local v4    # "var6":F
    .local v7, "var6":F
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMin()I

    move-result v0

    .line 1812
    :goto_3
    int-to-float v4, v0

    .line 1813
    .end local v10    # "var9":F
    .local v4, "var9":F
    int-to-float v8, v1

    int-to-float v9, v2

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setHotspot(FF)V

    .line 1814
    add-float v8, v5, v7

    add-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    .line 1815
    .end local v1    # "var3":I
    .end local v2    # "var4":I
    .end local v3    # "var5":I
    .end local v4    # "var9":F
    .end local v5    # "var7":F
    .end local v6    # "var8":F
    .end local v7    # "var6":F
    goto :goto_4

    .line 1816
    :cond_9
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->trackTouchEventInVertical(Landroid/view/MotionEvent;)V

    .line 1818
    :goto_4
    return-void
.end method

.method public final trackTouchEventInVertical(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 1821
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getHeight()I

    move-result v0

    .line 1822
    .local v0, "var2":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v1

    .line 1823
    .local v1, "var3":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v2

    .line 1824
    .local v2, "var4":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1825
    .local v3, "var5":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v4, v0, v4

    .line 1826
    .local v4, "var6":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v5

    .line 1827
    .local v5, "var7":I
    const/4 v6, 0x0

    .line 1829
    .local v6, "var8":F
    if-ge v4, v5, :cond_0

    .line 1830
    const/4 v7, 0x0

    .local v7, "var9":F
    goto :goto_0

    .line 1831
    .end local v7    # "var9":F
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v7

    sub-int v7, v0, v7

    if-le v4, v7, :cond_1

    .line 1832
    const/high16 v7, 0x3f800000    # 1.0f

    .restart local v7    # "var9":F
    goto :goto_0

    .line 1834
    .end local v7    # "var9":F
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v7

    sub-int v7, v4, v7

    int-to-float v7, v7

    sub-int v8, v0, v1

    sub-int/2addr v8, v2

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 1835
    .restart local v7    # "var9":F
    iget v6, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTouchProgressOffset:F

    .line 1838
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMax()I

    move-result v8

    int-to-float v8, v8

    .line 1839
    .local v8, "var10":F
    int-to-float v9, v3

    int-to-float v10, v4

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setHotspot(FF)V

    .line 1840
    mul-float v9, v7, v8

    add-float/2addr v9, v6

    float-to-int v9, v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    .line 1841
    return-void
.end method

.method public final updateBoundsForDualColor()V
    .locals 2

    .line 1844
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1845
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1846
    .local v0, "var1":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1849
    .end local v0    # "var1":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public updateDrawableBounds(II)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1852
    invoke-super {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslProgressBar;->updateDrawableBounds(II)V

    .line 1853
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 1854
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateBoundsForDualColor()V

    .line 1855
    return-void
.end method

.method public final updateDualColorMode()V
    .locals 2

    .line 1858
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1859
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1860
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mLargeFont:Z

    if-nez v0, :cond_1

    .line 1861
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapPoint:I

    if-le v0, v1, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1863
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1865
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1866
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1870
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateBoundsForDualColor()V

    .line 1872
    :cond_2
    return-void
.end method

.method public final updateGestureExclusionRects()V
    .locals 3

    .line 1875
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 1876
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1877
    .local v0, "var1":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 1878
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    invoke-super {p0, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 1879
    return-void

    .line 1882
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1883
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1884
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1885
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1886
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    invoke-super {p0, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 1889
    .end local v0    # "var1":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public updateHoverPopup()V
    .locals 4

    .line 1892
    sget-boolean v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_1

    .line 1893
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const-string v1, "hidden_update"

    goto :goto_0

    :cond_0
    const-string v1, "update"

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "com.samsung.android.widget.SemHoverPopupWindow"

    invoke-static {v3, v0, v1, v2}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1896
    :cond_1
    return-void
.end method

.method public final updateSplitProgress()V
    .locals 11

    .line 1900
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1901
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 1902
    .local v0, "var1":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1903
    .local v1, "var2":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 1904
    iget-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1905
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbPosX:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 1907
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbPosX:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1911
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getWidth()I

    move-result v2

    .line 1912
    .local v2, "var3":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getHeight()I

    move-result v3

    .line 1913
    .local v3, "var4":I
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1914
    if-eqz v0, :cond_2

    .line 1915
    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 1916
    .local v4, "var5":F
    iget v6, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mDensity:F

    .line 1917
    .local v6, "var6":F
    const/high16 v7, 0x40800000    # 4.0f

    mul-float v8, v6, v7

    div-float/2addr v8, v5

    sub-float v8, v4, v8

    float-to-int v2, v8

    .line 1918
    int-to-float v8, v3

    div-float/2addr v8, v5

    .line 1919
    .local v8, "var7":F
    const/high16 v9, 0x41b00000    # 22.0f

    mul-float v10, v6, v9

    div-float/2addr v10, v5

    sub-float v10, v8, v10

    float-to-int v10, v10

    mul-float/2addr v7, v6

    div-float/2addr v7, v5

    add-float/2addr v7, v4

    float-to-int v7, v7

    mul-float/2addr v9, v6

    div-float/2addr v9, v5

    add-float/2addr v9, v8

    float-to-int v5, v9

    invoke-virtual {v0, v2, v10, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1923
    .end local v0    # "var1":Landroid/graphics/drawable/Drawable;
    .end local v1    # "var2":Landroid/graphics/Rect;
    .end local v2    # "var3":I
    .end local v3    # "var4":I
    .end local v4    # "var5":F
    .end local v6    # "var6":F
    .end local v8    # "var7":F
    :cond_2
    return-void
.end method

.method public final updateThumbAndTrackPos(II)V
    .locals 8
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1926
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    .line 1927
    .local v0, "var3":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    .line 1928
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1929
    .end local v0    # "var3":I
    .local v1, "var3":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1930
    .local v0, "var4":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1931
    .local v2, "var5":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxHeight:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1932
    .local v3, "var6":I
    if-nez v2, :cond_0

    .line 1933
    const/4 p2, 0x0

    goto :goto_0

    .line 1935
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    .line 1939
    :goto_0
    if-le p2, v3, :cond_1

    .line 1940
    sub-int v4, v1, p2

    div-int/lit8 v4, v4, 0x2

    .line 1941
    .end local v1    # "var3":I
    .local v4, "var3":I
    sub-int v1, p2, v3

    div-int/lit8 v1, v1, 0x2

    .line 1942
    .local v1, "var7":I
    add-int/2addr v1, v4

    .line 1943
    nop

    .line 1944
    move p2, v1

    goto :goto_1

    .line 1946
    .end local v4    # "var3":I
    .local v1, "var3":I
    :cond_1
    sub-int v4, v1, v3

    div-int/lit8 v4, v4, 0x2

    .line 1947
    .local v4, "var7":I
    sub-int v5, v3, p2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .line 1948
    .end local v1    # "var3":I
    .local v5, "var3":I
    move p2, v4

    move v1, v4

    move v4, v5

    .line 1951
    .end local v5    # "var3":I
    .local v1, "var7":I
    .local v4, "var3":I
    :goto_1
    if-eqz v0, :cond_2

    .line 1952
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v6

    sub-int v6, p1, v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    add-int v7, v3, p2

    invoke-virtual {v0, v5, p2, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1955
    :cond_2
    if-eqz v2, :cond_3

    .line 1956
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getScale()F

    move-result v5

    invoke-virtual {p0, p1, v2, v5, v4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1959
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateSplitProgress()V

    .line 1960
    .end local v0    # "var4":Landroid/graphics/drawable/Drawable;
    .end local v1    # "var7":I
    .end local v2    # "var5":Landroid/graphics/drawable/Drawable;
    .end local v3    # "var6":I
    move v0, v4

    goto :goto_2

    .line 1961
    .end local v4    # "var3":I
    .local v0, "var3":I
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->updateThumbAndTrackPosInVertical(II)V

    .line 1963
    :goto_2
    return-void
.end method

.method public final updateThumbAndTrackPosInVertical(II)V
    .locals 9
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1966
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1967
    .local v0, "var3":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1968
    .local v1, "var4":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1969
    .local v2, "var5":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mMaxWidth:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1970
    .local v3, "var6":I
    if-nez v2, :cond_0

    .line 1971
    const/4 p1, 0x0

    goto :goto_0

    .line 1973
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 1977
    :goto_0
    if-le p1, v3, :cond_1

    .line 1978
    sub-int v4, v0, p1

    div-int/lit8 v4, v4, 0x2

    .line 1979
    .local v4, "var7":I
    sub-int v5, p1, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .end local p1    # "var1":I
    .local v5, "var1":I
    goto :goto_1

    .line 1981
    .end local v4    # "var7":I
    .end local v5    # "var1":I
    .restart local p1    # "var1":I
    :cond_1
    sub-int v4, v0, v3

    div-int/lit8 v4, v4, 0x2

    .line 1982
    .restart local v4    # "var7":I
    sub-int v5, v3, p1

    div-int/lit8 v5, v5, 0x2

    add-int v3, v5, v4

    .line 1983
    move v5, v4

    .line 1984
    .end local p1    # "var1":I
    .restart local v5    # "var1":I
    move v4, v3

    .line 1987
    :goto_1
    if-eqz v1, :cond_2

    .line 1988
    const/4 p1, 0x0

    sub-int v6, v0, v5

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v7

    sub-int v7, p2, v7

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v1, v5, p1, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1991
    :cond_2
    if-eqz v2, :cond_3

    .line 1992
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getScale()F

    move-result p1

    invoke-virtual {p0, p2, v2, p1, v4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1995
    :cond_3
    return-void
.end method

.method public final updateWarningMode(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 1998
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar;->mCurrentMode:I

    .line 1999
    .local v0, "var2":I
    const/4 v1, 0x1

    .line 2000
    .local v1, "var3":Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 2002
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getMax()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 2003
    move v2, v1

    .local v2, "var4":Z
    goto :goto_0

    .line 2005
    .end local v2    # "var4":Z
    :cond_0
    const/4 v2, 0x0

    .line 2008
    .restart local v2    # "var4":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 2009
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 2010
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 2012
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 2013
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 2017
    .end local v2    # "var4":Z
    :cond_2
    :goto_1
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 2021
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2022
    const/4 v0, 0x0

    .local v0, "var2":Z
    goto :goto_0

    .line 2024
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x1

    .line 2027
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method
