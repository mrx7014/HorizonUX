.class public Lcom/samsung/android/ui/preference/SeslPreference;
.super Ljava/lang/Object;
.source "SeslPreference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeListener;,
        Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceClickListener;,
        Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeInternalListener;,
        Lcom/samsung/android/ui/preference/SeslPreference$BaseSavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/ui/preference/SeslPreference;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mAllowDividerAbove:Z

.field private mAllowDividerBelow:Z

.field private mBaseMethodCalled:Z

.field private mChangedSummaryColor:Z

.field private mChangedSummaryColorStateList:Z

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/preference/SeslPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasId:Z

.field private mHasSingleLineTitleAttr:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconSpaceReserved:Z

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field mIsPreferenceRoundedBg:Z

.field mIsRoundChanged:Z

.field public mIsSolidRoundedCorner:Z

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeListener;

.field private mOnClickListener:Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mParentGroup:Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

.field private mPersistent:Z

.field private mPreferenceDataStore:Lcom/samsung/android/ui/preference/PreferenceDataStore;

.field private mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSingleLineTitle:Z

.field mSubheaderColor:I

.field mSubheaderRound:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryColor:I

.field private mSummaryColorStateList:Landroid/content/res/ColorStateList;

.field private mTextColorSecondary:Landroid/content/res/ColorStateList;

.field private mTitle:Ljava/lang/CharSequence;

.field private mViewId:I

.field private mVisible:Z

.field private mWasDetached:Z

.field mWhere:I

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 104
    const v0, 0x7f0402c4

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mOrder:I

    .line 113
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mViewId:I

    .line 114
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mEnabled:Z

    .line 115
    iput-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSelectable:Z

    .line 116
    iput-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPersistent:Z

    .line 117
    iput-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDependencyMet:Z

    .line 118
    iput-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mParentDependencyMet:Z

    .line 119
    iput-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mVisible:Z

    .line 120
    iput-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mAllowDividerAbove:Z

    .line 121
    iput-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mAllowDividerBelow:Z

    .line 122
    iput-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSingleLineTitle:Z

    .line 123
    iput-boolean v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIsSolidRoundedCorner:Z

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIsPreferenceRoundedBg:Z

    .line 125
    iput-boolean v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSubheaderRound:Z

    .line 126
    iput v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mWhere:I

    .line 127
    iput-boolean v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIsRoundChanged:Z

    .line 128
    iput-boolean v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mChangedSummaryColor:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mChangedSummaryColorStateList:Z

    .line 130
    iput-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mShouldDisableView:Z

    .line 131
    const v3, 0x7f0c0097

    iput v3, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mLayoutResId:I

    .line 132
    new-instance v3, Lcom/samsung/android/ui/preference/SeslPreference$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/ui/preference/SeslPreference$1;-><init>(Lcom/samsung/android/ui/preference/SeslPreference;)V

    iput-object v3, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 137
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mContext:Landroid/content/Context;

    .line 138
    sget-object v3, Lcom/mesalabs/ten/update/R$styleable;->SeslPreference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 139
    .local v3, "var5":Landroid/content/res/TypedArray;
    const/16 v4, 0x16

    invoke-static {v3, v4, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIconResId:I

    .line 140
    const/16 v4, 0x18

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    .line 141
    const/16 v4, 0x20

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    .line 142
    const/16 v4, 0x1f

    const/4 v5, 0x7

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSummary:Ljava/lang/CharSequence;

    .line 143
    const/16 v4, 0x1a

    const/16 v5, 0x8

    invoke-static {v3, v4, v5, v0}, Landroidx/core/content/res/TypedArrayUtils;->getInt(Landroid/content/res/TypedArray;III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mOrder:I

    .line 144
    const/16 v0, 0x15

    const/16 v4, 0xd

    invoke-static {v3, v0, v4}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mFragment:Ljava/lang/String;

    .line 145
    const/16 v0, 0x19

    const/4 v4, 0x3

    const v5, 0x7f0c007a

    invoke-static {v3, v0, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mLayoutResId:I

    .line 146
    const/16 v0, 0x21

    const/16 v4, 0x9

    invoke-static {v3, v0, v4, v1}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mWidgetLayoutResId:I

    .line 147
    const/16 v0, 0x14

    const/4 v4, 0x2

    invoke-static {v3, v0, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mEnabled:Z

    .line 148
    const/16 v0, 0x1c

    const/4 v4, 0x5

    invoke-static {v3, v0, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSelectable:Z

    .line 149
    const/16 v0, 0x1b

    invoke-static {v3, v0, v2, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPersistent:Z

    .line 150
    const/16 v0, 0x13

    const/16 v4, 0xa

    invoke-static {v3, v0, v4}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDependencyKey:Ljava/lang/String;

    .line 151
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSelectable:Z

    const/16 v4, 0x10

    invoke-static {v3, v4, v4, v0}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mAllowDividerAbove:Z

    .line 152
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSelectable:Z

    const/16 v4, 0x11

    invoke-static {v3, v4, v4, v0}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mAllowDividerBelow:Z

    .line 153
    const/16 v0, 0x12

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_0

    .line 155
    :cond_0
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDefaultValue:Ljava/lang/Object;

    .line 159
    :cond_1
    :goto_0
    const/16 v0, 0x1d

    const/16 v4, 0xc

    invoke-static {v3, v0, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mShouldDisableView:Z

    .line 160
    const/16 v0, 0x1e

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mHasSingleLineTitleAttr:Z

    .line 161
    if-eqz v4, :cond_2

    .line 162
    const/16 v4, 0xe

    invoke-static {v3, v0, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSingleLineTitle:Z

    .line 165
    :cond_2
    const/16 v0, 0x17

    const/16 v4, 0xf

    invoke-static {v3, v0, v4, v1}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIconSpaceReserved:Z

    .line 166
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 168
    .local v0, "var6":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v4, 0x1010038

    invoke-virtual {v1, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 169
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_3

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mTextColorSecondary:Landroid/content/res/ColorStateList;

    .line 173
    :cond_3
    return-void
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getPreferenceDataStore()Lcom/samsung/android/ui/preference/PreferenceDataStore;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 181
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 184
    :cond_2
    :goto_0
    return-void
.end method

.method private registerDependency()V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v0

    .line 208
    .local v0, "var1":Lcom/samsung/android/ui/preference/SeslPreference;
    if-eqz v0, :cond_0

    .line 212
    invoke-direct {v0, p0}, Lcom/samsung/android/ui/preference/SeslPreference;->registerDependent(Lcom/samsung/android/ui/preference/SeslPreference;)V

    goto :goto_0

    .line 209
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    .end local v0    # "var1":Lcom/samsung/android/ui/preference/SeslPreference;
    :cond_1
    :goto_0
    return-void
.end method

.method private registerDependent(Lcom/samsung/android/ui/preference/SeslPreference;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 218
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDependents:Ljava/util/List;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->onDependencyChanged(Lcom/samsung/android/ui/preference/SeslPreference;Z)V

    .line 224
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Z

    .line 227
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 228
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 229
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 231
    .local v0, "var4":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "var3":I
    :goto_0
    if-ltz v1, :cond_0

    .line 232
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/ui/preference/SeslPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 231
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 236
    .end local v0    # "var4":Landroid/view/ViewGroup;
    .end local v1    # "var3":I
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/SharedPreferences$Editor;

    .line 239
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    :cond_0
    return-void
.end method

.method private unregisterDependency()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDependencyKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v0

    .line 248
    .local v0, "var1":Lcom/samsung/android/ui/preference/SeslPreference;
    if-eqz v0, :cond_0

    .line 249
    invoke-direct {v0, p0}, Lcom/samsung/android/ui/preference/SeslPreference;->unregisterDependent(Lcom/samsung/android/ui/preference/SeslPreference;)V

    .line 253
    .end local v0    # "var1":Lcom/samsung/android/ui/preference/SeslPreference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Lcom/samsung/android/ui/preference/SeslPreference;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 256
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 260
    :cond_0
    return-void
.end method


# virtual methods
.method assignParent(Lcom/samsung/android/ui/preference/SeslPreferenceGroup;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    .line 263
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mParentGroup:Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    .line 264
    return-void
.end method

.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "var1"    # Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mOnChangeListener:Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeListener;->onPreferenceChange(Lcom/samsung/android/ui/preference/SeslPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x0

    .local v0, "var2":Z
    goto :goto_0

    .line 271
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x1

    .line 274
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

.method protected callClickListener()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mOnClickListener:Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceClickListener;

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0, p0}, Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceClickListener;->onPreferenceClick(Lcom/samsung/android/ui/preference/SeslPreference;)Z

    .line 281
    :cond_0
    return-void
.end method

.method public final clearWasDetached()V
    .locals 1

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mWasDetached:Z

    .line 285
    return-void
.end method

.method public compareTo(Lcom/samsung/android/ui/preference/SeslPreference;)I
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 289
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mOrder:I

    iget v1, p1, Lcom/samsung/android/ui/preference/SeslPreference;->mOrder:I

    if-eq v0, v1, :cond_0

    .line 290
    sub-int/2addr v0, v1

    .local v0, "var2":I
    goto :goto_0

    .line 291
    .end local v0    # "var2":I
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/samsung/android/ui/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    .line 292
    const/4 v0, 0x0

    .restart local v0    # "var2":I
    goto :goto_0

    .line 293
    .end local v0    # "var2":I
    :cond_1
    if-nez v0, :cond_2

    .line 294
    const/4 v0, 0x1

    .restart local v0    # "var2":I
    goto :goto_0

    .line 295
    .end local v0    # "var2":I
    :cond_2
    if-nez v1, :cond_3

    .line 296
    const/4 v0, -0x1

    .restart local v0    # "var2":I
    goto :goto_0

    .line 298
    .end local v0    # "var2":I
    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/ui/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 301
    .restart local v0    # "var2":I
    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 50
    check-cast p1, Lcom/samsung/android/ui/preference/SeslPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->compareTo(Lcom/samsung/android/ui/preference/SeslPreference;)I

    move-result p1

    return p1
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "var1"    # Landroid/os/Bundle;

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 307
    .local v0, "var2":Landroid/os/Parcelable;
    if-eqz v0, :cond_1

    .line 308
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mBaseMethodCalled:Z

    .line 309
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 310
    iget-boolean v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    .end local v0    # "var2":Landroid/os/Parcelable;
    :cond_1
    :goto_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "var1"    # Landroid/os/Bundle;

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mBaseMethodCalled:Z

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 322
    .local v0, "var2":Landroid/os/Parcelable;
    iget-boolean v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    .line 326
    if-eqz v0, :cond_1

    .line 327
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 323
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    .end local v0    # "var2":Landroid/os/Parcelable;
    :cond_1
    :goto_0
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lcom/samsung/android/ui/preference/SeslPreference;
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;

    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v0

    .local v0, "var2":Lcom/samsung/android/ui/preference/SeslPreference;
    goto :goto_0

    .line 338
    .end local v0    # "var2":Lcom/samsung/android/ui/preference/SeslPreference;
    :cond_0
    const/4 v0, 0x0

    .line 341
    .restart local v0    # "var2":Lcom/samsung/android/ui/preference/SeslPreference;
    :goto_0
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mExtras:Landroid/os/Bundle;

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v0, "var1":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 359
    .local v1, "var2":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 364
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 372
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method getId()J
    .locals 2

    .line 380
    iget-wide v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getLayoutResource()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeListener;
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mOnChangeListener:Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceClickListener;
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mOnClickListener:Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 396
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mOrder:I

    return v0
.end method

.method public getParent()Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mParentGroup:Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    return-object v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 3
    .param p1, "var1"    # Z

    .line 404
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getPreferenceDataStore()Lcom/samsung/android/ui/preference/PreferenceDataStore;

    move-result-object v0

    .line 406
    .local v0, "var2":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    if-eqz v0, :cond_0

    .line 407
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/ui/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {v1}, Lcom/samsung/android/ui/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 413
    .end local v0    # "var2":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    :cond_1
    :goto_0
    return p1
.end method

.method protected getPersistedInt(I)I
    .locals 3
    .param p1, "var1"    # I

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getPreferenceDataStore()Lcom/samsung/android/ui/preference/PreferenceDataStore;

    move-result-object v0

    .line 419
    .local v0, "var2":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    if-eqz v0, :cond_0

    .line 420
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/ui/preference/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {v1}, Lcom/samsung/android/ui/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 426
    .end local v0    # "var2":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    :cond_1
    :goto_0
    return p1
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "var1"    # Ljava/lang/String;

    .line 430
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getPreferenceDataStore()Lcom/samsung/android/ui/preference/PreferenceDataStore;

    move-result-object v0

    .line 432
    .local v0, "var2":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    if-eqz v0, :cond_0

    .line 433
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/ui/preference/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {v1}, Lcom/samsung/android/ui/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 439
    .end local v0    # "var2":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    :cond_1
    :goto_0
    return-object p1
.end method

.method public getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 443
    .local p1, "var1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    return-object p1

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getPreferenceDataStore()Lcom/samsung/android/ui/preference/PreferenceDataStore;

    move-result-object v0

    .line 447
    .local v0, "var2":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/ui/preference/PreferenceDataStore;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {v1}, Lcom/samsung/android/ui/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getPreferenceDataStore()Lcom/samsung/android/ui/preference/PreferenceDataStore;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceDataStore:Lcom/samsung/android/ui/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceDataStore:Lcom/samsung/android/ui/preference/PreferenceDataStore;

    .local v0, "var1":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    goto :goto_0

    .line 455
    .end local v0    # "var1":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/PreferenceManager;->getPreferenceDataStore()Lcom/samsung/android/ui/preference/PreferenceDataStore;

    move-result-object v0

    .restart local v0    # "var1":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    goto :goto_0

    .line 458
    .end local v0    # "var1":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    :cond_1
    const/4 v0, 0x0

    .line 461
    .restart local v0    # "var1":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    :goto_0
    return-object v0
.end method

.method public getPreferenceManager()Lcom/samsung/android/ui/preference/PreferenceManager;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getPreferenceDataStore()Lcom/samsung/android/ui/preference/PreferenceDataStore;

    move-result-object v0

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "var1":Landroid/content/SharedPreferences;
    goto :goto_0

    .line 473
    .end local v0    # "var1":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v0, 0x0

    .line 476
    .restart local v0    # "var1":Landroid/content/SharedPreferences;
    :goto_0
    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getWidgetLayoutResource()I
    .locals 1

    .line 500
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 508
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 511
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 545
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mParentDependencyMet:Z

    if-eqz v0, :cond_0

    .line 546
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 548
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 551
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 555
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 566
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSelectable:Z

    return v0
.end method

.method protected isTalkBackIsRunning()Z
    .locals 3

    .line 575
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 577
    .local v0, "var1":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "var3":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 580
    :cond_0
    const/4 v2, 0x1

    .line 581
    .local v2, "var2":Z
    return v2

    .line 585
    .end local v1    # "var3":Ljava/lang/String;
    .end local v2    # "var2":Z
    :cond_1
    const/4 v1, 0x0

    .line 586
    .local v1, "var2":Z
    return v1
.end method

.method public final isVisible()Z
    .locals 1

    .line 590
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mVisible:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mListener:Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 595
    invoke-interface {v0, p0}, Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeInternalListener;->onPreferenceChange(Lcom/samsung/android/ui/preference/SeslPreference;)V

    .line 598
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "var1"    # Z

    .line 601
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDependents:Ljava/util/List;

    .line 602
    .local v0, "var2":Ljava/util/List;
    if-eqz v0, :cond_0

    .line 603
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 605
    .local v1, "var3":I
    const/4 v2, 0x0

    .local v2, "var4":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 606
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/preference/SeslPreference;

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->onDependencyChanged(Lcom/samsung/android/ui/preference/SeslPreference;Z)V

    .line 605
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 610
    .end local v1    # "var3":I
    .end local v2    # "var4":I
    :cond_0
    return-void
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mListener:Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 614
    invoke-interface {v0, p0}, Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Lcom/samsung/android/ui/preference/SeslPreference;)V

    .line 617
    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 0

    .line 620
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->registerDependency()V

    .line 621
    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/samsung/android/ui/preference/PreferenceManager;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/PreferenceManager;

    .line 624
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    .line 625
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mHasId:Z

    if-nez v0, :cond_0

    .line 626
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mId:J

    .line 629
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->dispatchSetInitialValue()V

    .line 630
    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/samsung/android/ui/preference/PreferenceManager;J)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/PreferenceManager;
    .param p2, "var2"    # J

    .line 633
    iput-wide p2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mId:J

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mHasId:Z

    .line 637
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->onAttachedToHierarchy(Lcom/samsung/android/ui/preference/PreferenceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mHasId:Z

    .line 640
    nop

    .line 642
    return-void

    .line 639
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mHasId:Z

    .line 640
    throw v1
.end method

.method public onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V
    .locals 8
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    .line 646
    const/4 v0, 0x4

    .line 647
    .local v0, "var2":B
    iget-object v1, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    iget-object v1, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mViewId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 649
    iget-boolean v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIsPreferenceRoundedBg:Z

    iget v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mWhere:I

    iget-boolean v3, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSubheaderRound:Z

    invoke-virtual {p1, v1, v2, v3}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->seslSetPreferenceBackgroundType(ZIZ)V

    .line 650
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 651
    .local v1, "var3":Landroid/widget/TextView;
    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 652
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 653
    .local v4, "var4":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 654
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 656
    iget-boolean v5, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mHasSingleLineTitleAttr:Z

    if-eqz v5, :cond_2

    .line 657
    iget-boolean v5, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSingleLineTitle:Z

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 659
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    instance-of v5, p0, Lcom/samsung/android/ui/preference/PreferenceCategory;

    if-eqz v5, :cond_1

    .line 660
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    iget-boolean v5, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mHasSingleLineTitleAttr:Z

    if-eqz v5, :cond_2

    .line 662
    iget-boolean v5, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSingleLineTitle:Z

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 665
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 669
    .end local v4    # "var4":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 670
    .local v4, "var9":Landroid/widget/TextView;
    if-eqz v4, :cond_7

    .line 671
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    .line 672
    .local v5, "var7":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 673
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mChangedSummaryColor:Z

    const-string v6, "SeslPreference"

    if-eqz v2, :cond_3

    .line 675
    iget v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSummaryColor:I

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set Summary Color : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSummaryColor:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 677
    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mChangedSummaryColorStateList:Z

    if-eqz v2, :cond_4

    .line 678
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSummaryColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set Summary ColorStateList : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSummaryColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 680
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mTextColorSecondary:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_5

    .line 681
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 684
    :cond_5
    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 686
    :cond_6
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 690
    .end local v5    # "var7":Ljava/lang/CharSequence;
    :cond_7
    :goto_2
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/preference/internal/SeslPreferenceImageView;

    .line 692
    .local v2, "imageView":Lcom/samsung/android/ui/preference/internal/SeslPreferenceImageView;
    if-eqz v2, :cond_d

    .line 693
    iget v5, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIconResId:I

    if-nez v5, :cond_8

    iget-object v6, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_a

    .line 694
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_9

    .line 695
    iget-object v6, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 697
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 698
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_a

    .line 699
    invoke-virtual {v2, v5}, Lcom/samsung/android/ui/preference/internal/SeslPreferenceImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 702
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    .line 703
    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/preference/internal/SeslPreferenceImageView;->setVisibility(I)V

    goto :goto_4

    .line 705
    :cond_b
    iget-boolean v5, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIconSpaceReserved:Z

    if-eqz v5, :cond_c

    .line 706
    const/4 v5, 0x4

    .local v5, "var6":B
    goto :goto_3

    .line 708
    .end local v5    # "var6":B
    :cond_c
    const/16 v5, 0x8

    .line 711
    .restart local v5    # "var6":B
    :goto_3
    invoke-virtual {v2, v5}, Lcom/samsung/android/ui/preference/internal/SeslPreferenceImageView;->setVisibility(I)V

    .line 715
    .end local v5    # "var6":B
    :cond_d
    :goto_4
    const v5, 0x7f0900c0

    invoke-virtual {p1, v5}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 716
    .local v5, "var8":Landroid/view/View;
    move-object v6, v5

    .line 717
    .local v6, "var11":Landroid/view/View;
    if-nez v5, :cond_e

    .line 718
    const v7, 0x102003e

    invoke-virtual {p1, v7}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 721
    :cond_e
    if-eqz v6, :cond_11

    .line 722
    iget-object v7, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_f

    .line 723
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 725
    :cond_f
    iget-boolean v3, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIconSpaceReserved:Z

    if-eqz v3, :cond_10

    .line 726
    move v3, v0

    .local v3, "var6":B
    goto :goto_5

    .line 728
    .end local v3    # "var6":B
    :cond_10
    const/16 v3, 0x8

    .line 731
    .restart local v3    # "var6":B
    :goto_5
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 735
    .end local v3    # "var6":B
    :cond_11
    :goto_6
    iget-boolean v3, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mShouldDisableView:Z

    if-eqz v3, :cond_12

    .line 736
    iget-object v3, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->isEnabled()Z

    move-result v7

    invoke-direct {p0, v3, v7}, Lcom/samsung/android/ui/preference/SeslPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto :goto_7

    .line 738
    :cond_12
    iget-object v3, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-direct {p0, v3, v7}, Lcom/samsung/android/ui/preference/SeslPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 741
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->isSelectable()Z

    move-result v3

    .line 742
    .local v3, "var5":Z
    iget-object v7, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 743
    iget-object v7, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setClickable(Z)V

    .line 744
    iget-boolean v7, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mAllowDividerAbove:Z

    invoke-virtual {p1, v7}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 745
    iget-boolean v7, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mAllowDividerBelow:Z

    invoke-virtual {p1, v7}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 746
    return-void
.end method

.method protected onClick()V
    .locals 0

    .line 749
    return-void
.end method

.method public onDependencyChanged(Lcom/samsung/android/ui/preference/SeslPreference;Z)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/SeslPreference;
    .param p2, "var2"    # Z

    .line 752
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDependencyMet:Z

    if-ne v0, p2, :cond_1

    .line 753
    if-nez p2, :cond_0

    .line 754
    const/4 p2, 0x1

    goto :goto_0

    .line 756
    :cond_0
    const/4 p2, 0x0

    .line 759
    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mDependencyMet:Z

    .line 760
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->notifyDependencyChange(Z)V

    .line 761
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->notifyChanged()V

    .line 764
    :cond_1
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 767
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->unregisterDependency()V

    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mWasDetached:Z

    .line 769
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "var1"    # Landroid/content/res/TypedArray;
    .param p2, "var2"    # I

    .line 772
    const/4 v0, 0x0

    return-object v0
.end method

.method public onParentChanged(Lcom/samsung/android/ui/preference/SeslPreference;Z)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/SeslPreference;
    .param p2, "var2"    # Z

    .line 776
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_1

    .line 777
    if-nez p2, :cond_0

    .line 778
    const/4 p2, 0x1

    goto :goto_0

    .line 780
    :cond_0
    const/4 p2, 0x0

    .line 783
    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mParentDependencyMet:Z

    .line 784
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->notifyDependencyChange(Z)V

    .line 785
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->notifyChanged()V

    .line 788
    :cond_1
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .line 791
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->unregisterDependency()V

    .line 792
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Parcelable;

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mBaseMethodCalled:Z

    .line 796
    sget-object v0, Lcom/samsung/android/ui/preference/SeslPreference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 797
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting SeslPreference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mBaseMethodCalled:Z

    .line 803
    sget-object v0, Lcom/samsung/android/ui/preference/SeslPreference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "var1"    # Z
    .param p2, "var2"    # Ljava/lang/Object;

    .line 807
    return-void
.end method

.method public performClick()V
    .locals 3

    .line 810
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 811
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->onClick()V

    .line 812
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mOnClickListener:Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceClickListener;->onPreferenceClick(Lcom/samsung/android/ui/preference/SeslPreference;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 813
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getPreferenceManager()Lcom/samsung/android/ui/preference/PreferenceManager;

    move-result-object v0

    .line 814
    .local v0, "var1":Lcom/samsung/android/ui/preference/PreferenceManager;
    if-eqz v0, :cond_1

    .line 815
    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Lcom/samsung/android/ui/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 816
    .local v1, "var2":Lcom/samsung/android/ui/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lcom/samsung/android/ui/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lcom/samsung/android/ui/preference/SeslPreference;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 817
    return-void

    .line 821
    .end local v1    # "var2":Lcom/samsung/android/ui/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 822
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 827
    .end local v0    # "var1":Lcom/samsung/android/ui/preference/PreferenceManager;
    :cond_2
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;

    .line 830
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->performClick()V

    .line 831
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 6
    .param p1, "var1"    # Z

    .line 834
    const/4 v0, 0x0

    .line 835
    .local v0, "var2":Z
    const/4 v1, 0x1

    .line 837
    .local v1, "var3":Z
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->shouldPersist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 838
    const/4 v2, 0x0

    .local v2, "var4":Z
    goto :goto_0

    .line 840
    .end local v2    # "var4":Z
    :cond_0
    if-nez p1, :cond_1

    .line 841
    const/4 v0, 0x1

    .line 844
    :cond_1
    move v2, v1

    .line 845
    .restart local v2    # "var4":Z
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->getPersistedBoolean(Z)Z

    move-result v3

    if-eq p1, v3, :cond_3

    .line 846
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getPreferenceDataStore()Lcom/samsung/android/ui/preference/PreferenceDataStore;

    move-result-object v3

    .line 847
    .local v3, "var5":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    if-eqz v3, :cond_2

    .line 848
    iget-object v4, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lcom/samsung/android/ui/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    .line 849
    move v2, v1

    goto :goto_0

    .line 851
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {v4}, Lcom/samsung/android/ui/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 852
    .local v4, "var6":Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v4, v5, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 853
    invoke-direct {p0, v4}, Lcom/samsung/android/ui/preference/SeslPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 854
    move v2, v1

    .line 859
    .end local v3    # "var5":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    .end local v4    # "var6":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :goto_0
    return v2
.end method

.method protected persistInt(I)Z
    .locals 5
    .param p1, "var1"    # I

    .line 863
    const/4 v0, 0x1

    .line 865
    .local v0, "var2":Z
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 866
    const/4 v1, 0x0

    .local v1, "var3":Z
    goto :goto_0

    .line 868
    .end local v1    # "var3":Z
    :cond_0
    move v1, v0

    .line 869
    .restart local v1    # "var3":Z
    not-int v2, p1

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/preference/SeslPreference;->getPersistedInt(I)I

    move-result v2

    if-eq p1, v2, :cond_2

    .line 870
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getPreferenceDataStore()Lcom/samsung/android/ui/preference/PreferenceDataStore;

    move-result-object v2

    .line 871
    .local v2, "var4":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    if-eqz v2, :cond_1

    .line 872
    iget-object v3, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/ui/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    .line 873
    move v1, v0

    goto :goto_0

    .line 875
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {v3}, Lcom/samsung/android/ui/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 876
    .local v3, "var5":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 877
    invoke-direct {p0, v3}, Lcom/samsung/android/ui/preference/SeslPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 878
    move v1, v0

    .line 883
    .end local v2    # "var4":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    .end local v3    # "var5":Landroid/content/SharedPreferences$Editor;
    :cond_2
    :goto_0
    return v1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 5
    .param p1, "var1"    # Ljava/lang/String;

    .line 887
    const/4 v0, 0x1

    .line 889
    .local v0, "var2":Z
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 890
    const/4 v1, 0x0

    .local v1, "var3":Z
    goto :goto_0

    .line 892
    .end local v1    # "var3":Z
    :cond_0
    move v1, v0

    .line 893
    .restart local v1    # "var3":Z
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/preference/SeslPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 894
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getPreferenceDataStore()Lcom/samsung/android/ui/preference/PreferenceDataStore;

    move-result-object v2

    .line 895
    .local v2, "var4":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    if-eqz v2, :cond_1

    .line 896
    iget-object v3, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/ui/preference/PreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    move v1, v0

    goto :goto_0

    .line 899
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {v3}, Lcom/samsung/android/ui/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 900
    .local v3, "var5":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 901
    invoke-direct {p0, v3}, Lcom/samsung/android/ui/preference/SeslPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 902
    move v1, v0

    .line 907
    .end local v2    # "var4":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    .end local v3    # "var5":Landroid/content/SharedPreferences$Editor;
    :cond_2
    :goto_0
    return v1
.end method

.method public persistStringSet(Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 187
    .local p1, "var1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 190
    return v1

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getPreferenceDataStore()Lcom/samsung/android/ui/preference/PreferenceDataStore;

    move-result-object v0

    .line 193
    .local v0, "var2":Lcom/samsung/android/ui/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 194
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/ui/preference/PreferenceDataStore;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/samsung/android/ui/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 197
    .local v2, "var3":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-direct {p0, v2}, Lcom/samsung/android/ui/preference/SeslPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 201
    .end local v2    # "var3":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Bundle;

    .line 911
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 912
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Bundle;

    .line 915
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 916
    return-void
.end method

.method public seslSetRoundedBg(I)V
    .locals 2
    .param p1, "where"    # I

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIsPreferenceRoundedBg:Z

    .line 528
    iput p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mWhere:I

    .line 529
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSubheaderRound:Z

    .line 530
    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIsRoundChanged:Z

    .line 531
    return-void
.end method

.method public seslSetSubheaderColor(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 919
    iput p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSubheaderColor:I

    .line 920
    return-void
.end method

.method public seslSetSubheaderRoundedBg(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIsPreferenceRoundedBg:Z

    .line 924
    iput p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mWhere:I

    .line 925
    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSubheaderRound:Z

    .line 926
    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIsRoundChanged:Z

    .line 927
    return-void
.end method

.method public seslSetSummaryColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 515
    iput p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSummaryColor:I

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mChangedSummaryColor:Z

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mChangedSummaryColorStateList:Z

    .line 518
    return-void
.end method

.method public seslSetSummaryColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 521
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSummaryColorStateList:Landroid/content/res/ColorStateList;

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mChangedSummaryColorStateList:Z

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mChangedSummaryColor:Z

    .line 524
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 534
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 535
    iput-boolean p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mEnabled:Z

    .line 537
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->notifyDependencyChange(Z)V

    .line 539
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->notifyChanged()V

    .line 541
    :cond_0
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "var1"    # Landroid/content/Intent;

    .line 930
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mIntent:Landroid/content/Intent;

    .line 931
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 934
    iput p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mLayoutResId:I

    .line 935
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeInternalListener;

    .line 938
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mListener:Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeInternalListener;

    .line 939
    return-void
.end method

.method public setOnPreferenceChangeListener(Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeListener;

    .line 942
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mOnChangeListener:Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeListener;

    .line 943
    return-void
.end method

.method public setOnPreferenceClickListener(Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceClickListener;

    .line 950
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mOnClickListener:Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceClickListener;

    .line 951
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 958
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 959
    iput p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mOrder:I

    .line 960
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->notifyHierarchyChanged()V

    .line 963
    :cond_0
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .param p1, "selectable"    # Z

    .line 559
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 560
    iput-boolean p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSelectable:Z

    .line 561
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->notifyChanged()V

    .line 563
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .param p1, "shouldDisableView"    # Z

    .line 570
    iput-boolean p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mShouldDisableView:Z

    .line 571
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->notifyChanged()V

    .line 572
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .line 492
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 493
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 484
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mSummary:Ljava/lang/CharSequence;

    .line 486
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->notifyChanged()V

    .line 488
    :cond_0
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 966
    iput p1, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mWidgetLayoutResId:I

    .line 967
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 971
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 974
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 977
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method protected shouldPersist()Z
    .locals 1

    .line 982
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 985
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 988
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 992
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
