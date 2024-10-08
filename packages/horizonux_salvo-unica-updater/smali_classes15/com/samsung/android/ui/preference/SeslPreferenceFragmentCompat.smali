.class public abstract Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;
.super Landroidx/fragment/app/Fragment;
.source "SeslPreferenceFragmentCompat.java"

# interfaces
.implements Lcom/samsung/android/ui/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Lcom/samsung/android/ui/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
.implements Lcom/samsung/android/ui/preference/PreferenceManager$OnNavigateToScreenListener;
.implements Lcom/samsung/android/ui/preference/SeslDialogPreference$TargetFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;,
        Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;,
        Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceStartScreenCallback;,
        Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field public static final SESL_ROUNDED_CORNER_TYPE_NONE:I = 0x0

.field public static final SESL_ROUNDED_CORNER_TYPE_SOLID:I = 0x1

.field public static final SESL_ROUNDED_CORNER_TYPE_STROKE:I = 0x2


# instance fields
.field private final mDividerDecoration:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;

.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mIsLargeLayout:I

.field private mLayoutResId:I

.field private mList:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

.field private mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mRoundedCornerType:I

.field private mSelectPreferenceRunnable:Ljava/lang/Runnable;

.field private mSeslListRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

.field private mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

.field private mSeslStrokeListRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

.field private mSeslSubheaderRoundedCorner:Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

.field private mSubheaderColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 49
    new-instance v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;-><init>(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mDividerDecoration:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;

    .line 50
    new-instance v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$1;-><init>(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    .line 61
    const v0, 0x7f0c0082

    iput v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mLayoutResId:I

    .line 64
    new-instance v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$2;-><init>(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mRoundedCornerType:I

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mList:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    .line 45
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mRoundedCornerType:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSeslSubheaderRoundedCorner:Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)Lcom/samsung/android/ui/util/SeslRoundedCorner;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)Lcom/samsung/android/ui/util/SeslRoundedCorner;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSeslStrokeListRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)Lcom/samsung/android/ui/util/SeslRoundedCorner;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSeslListRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    return-object v0
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I

    .line 469
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->requirePreferenceManager()V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getPreferenceScreen()Lcom/samsung/android/ui/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/ui/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/samsung/android/ui/preference/PreferenceScreen;)Lcom/samsung/android/ui/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->setPreferenceScreen(Lcom/samsung/android/ui/preference/PreferenceScreen;)V

    .line 471
    return-void
.end method

.method public bindPreferences()V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getPreferenceScreen()Lcom/samsung/android/ui/preference/PreferenceScreen;

    move-result-object v0

    .line 82
    .local v0, "var1":Lcom/samsung/android/ui/preference/PreferenceScreen;
    if-eqz v0, :cond_1

    .line 83
    iget v1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mRoundedCornerType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 84
    iget v1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSubheaderColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/preference/PreferenceScreen;->seslSetSubheaderColor(I)V

    .line 85
    iput-boolean v2, v0, Lcom/samsung/android/ui/preference/PreferenceScreen;->mIsSolidRoundedCorner:Z

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getListView()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->onCreateAdapter(Lcom/samsung/android/ui/preference/PreferenceScreen;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setAdapter(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;)V

    .line 89
    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/PreferenceScreen;->onAttached()V

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->onBindPreferences()V

    .line 93
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;
    .locals 2
    .param p1, "var1"    # Ljava/lang/CharSequence;

    .line 96
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    .line 97
    .local v0, "var2":Lcom/samsung/android/ui/preference/PreferenceManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getCallbackFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListView()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mList:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/samsung/android/ui/preference/PreferenceScreen;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/PreferenceManager;->getPreferenceScreen()Lcom/samsung/android/ui/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public onBindPreferences()V
    .locals 0

    .line 113
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "var1"    # Landroid/content/res/Configuration;

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getListView()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getListView()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    .line 119
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x140

    if-gt v1, v2, :cond_0

    .line 120
    const/4 v1, 0x1

    .local v1, "var3":B
    goto :goto_0

    .line 122
    .end local v1    # "var3":B
    :cond_0
    const/4 v1, 0x2

    .line 125
    .restart local v1    # "var3":B
    :goto_0
    instance-of v2, v0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mIsLargeLayout:I

    if-eq v1, v2, :cond_6

    .line 126
    iput v1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mIsLargeLayout:I

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "var6":I
    const/4 v3, 0x0

    .line 131
    .local v3, "var4":Z
    :goto_1
    move-object v4, v0

    check-cast v4, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;

    .line 132
    .local v4, "var5":Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;
    invoke-virtual {v4}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 133
    if-eqz v3, :cond_6

    .line 134
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 139
    :cond_1
    invoke-virtual {v4, v2}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->getItem(I)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v5

    .line 140
    .local v5, "var8":Lcom/samsung/android/ui/preference/SeslPreference;
    instance-of v6, v5, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;

    if-eqz v6, :cond_5

    .line 142
    instance-of v6, v5, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    .line 143
    iget v6, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mIsLargeLayout:I

    if-ne v6, v7, :cond_2

    .line 144
    const v6, 0x7f0c00ac

    .local v6, "var7":I
    goto :goto_2

    .line 146
    .end local v6    # "var7":I
    :cond_2
    const v6, 0x7f0c00ab

    .line 149
    .restart local v6    # "var7":I
    :goto_2
    invoke-virtual {v5, v6}, Lcom/samsung/android/ui/preference/SeslPreference;->setLayoutResource(I)V

    goto :goto_4

    .line 151
    .end local v6    # "var7":I
    :cond_3
    iget v6, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mIsLargeLayout:I

    if-ne v6, v7, :cond_4

    .line 152
    const v6, 0x7f0c00a0

    .restart local v6    # "var7":I
    goto :goto_3

    .line 154
    .end local v6    # "var7":I
    :cond_4
    const v6, 0x7f0c0097

    .line 157
    .restart local v6    # "var7":I
    :goto_3
    invoke-virtual {v5, v6}, Lcom/samsung/android/ui/preference/SeslPreference;->setLayoutResource(I)V

    .line 160
    :goto_4
    const/4 v3, 0x1

    .line 163
    .end local v6    # "var7":I
    :cond_5
    nop

    .end local v4    # "var5":Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;
    .end local v5    # "var8":Lcom/samsung/android/ui/preference/SeslPreference;
    add-int/lit8 v2, v2, 0x1

    .line 164
    goto :goto_1

    .line 168
    .end local v0    # "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    .end local v1    # "var3":B
    .end local v2    # "var6":I
    .end local v3    # "var4":Z
    :cond_6
    :goto_5
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 169
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "var1"    # Landroid/os/Bundle;

    .line 172
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 173
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 174
    .local v0, "var2":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f0402c5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 175
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 176
    .local v1, "var3":I
    move v2, v1

    .line 177
    .local v2, "var4":I
    if-nez v1, :cond_0

    .line 178
    const v2, 0x7f100336

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 182
    new-instance v3, Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/ui/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    .line 183
    invoke-virtual {v3, p0}, Lcom/samsung/android/ui/preference/PreferenceManager;->setOnNavigateToScreenListener(Lcom/samsung/android/ui/preference/PreferenceManager$OnNavigateToScreenListener;)V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.samsung.android.ui.preference.SeslPreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "var5":Ljava/lang/String;
    goto :goto_0

    .line 188
    .end local v3    # "var5":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 191
    .restart local v3    # "var5":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public onCreateAdapter(Lcom/samsung/android/ui/preference/PreferenceScreen;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/PreferenceScreen;

    .line 195
    new-instance v0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p1}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;-><init>(Lcom/samsung/android/ui/preference/SeslPreferenceGroup;)V

    return-object v0
.end method

.method public onCreateLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .line 199
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .locals 2
    .param p1, "var1"    # Landroid/view/LayoutInflater;
    .param p2, "var2"    # Landroid/view/ViewGroup;
    .param p3, "var3"    # Landroid/os/Bundle;

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const v0, 0x7f090198

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 207
    .local v0, "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    if-eqz v0, :cond_0

    .line 208
    return-object v0

    .line 212
    .end local v0    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    :cond_0
    const v0, 0x7f0c009e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 213
    .local v0, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->onCreateLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setLayoutManager(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)V

    .line 214
    new-instance v1, Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {v1, v0}, Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setAccessibilityDelegateCompat(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;)V

    .line 215
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .param p1, "var1"    # Landroid/view/LayoutInflater;
    .param p2, "var2"    # Landroid/view/ViewGroup;
    .param p3, "var3"    # Landroid/os/Bundle;

    .line 219
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Landroid/util/AttributeSet;

    sget-object v4, Lcom/mesalabs/ten/update/R$styleable;->SeslPreferenceFragmentCompat:[I

    const v5, 0x7f0402bf

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 220
    .local v1, "var4":Landroid/content/res/TypedArray;
    iget v4, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mLayoutResId:I

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mLayoutResId:I

    .line 221
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 222
    .local v5, "var5":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x2

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 223
    .local v9, "var6":I
    const/4 v10, 0x3

    invoke-virtual {v1, v10, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 224
    .local v11, "var7":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 226
    .local v12, "var13":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Lcom/mesalabs/ten/update/R$styleable;->View:[I

    const v15, 0x1010208

    invoke-virtual {v13, v3, v14, v15, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 227
    .local v3, "var8":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 228
    .local v13, "var9":Landroid/graphics/drawable/Drawable;
    instance-of v14, v13, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v14, :cond_0

    .line 229
    move-object v14, v13

    check-cast v14, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v14

    iput v14, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSubheaderColor:I

    .line 232
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v14, "var15":Ljava/lang/StringBuilder;
    const-string v15, " sub header color = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget v15, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSubheaderColor:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v10, "SeslPreferenceFragmentC"

    invoke-static {v10, v15}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v15, p1

    invoke-virtual {v15, v10}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 238
    .local v10, "var14":Landroid/view/LayoutInflater;
    iget v7, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mLayoutResId:I

    move-object/from16 v4, p2

    invoke-virtual {v10, v7, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 239
    .local v7, "var10":Landroid/view/View;
    const v6, 0x102003f

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 240
    .local v6, "var11":Landroid/view/View;
    instance-of v2, v6, Landroid/view/ViewGroup;

    if-eqz v2, :cond_7

    .line 241
    move-object v2, v6

    check-cast v2, Landroid/view/ViewGroup;

    .line 242
    .end local p2    # "var2":Landroid/view/ViewGroup;
    .local v2, "var2":Landroid/view/ViewGroup;
    move-object/from16 v4, p3

    invoke-virtual {v0, v10, v2, v4}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    move-result-object v8

    .line 243
    .local v8, "var12":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    if-eqz v8, :cond_6

    .line 244
    iput-object v8, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mList:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 245
    move-object/from16 v17, v1

    .end local v1    # "var4":Landroid/content/res/TypedArray;
    .local v17, "var4":Landroid/content/res/TypedArray;
    iget-object v1, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mDividerDecoration:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {v8, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->addItemDecoration(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;)V

    .line 246
    invoke-virtual {v0, v5}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 247
    const/4 v1, -0x1

    if-eq v9, v1, :cond_1

    .line 248
    invoke-virtual {v0, v9}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->setDividerHeight(I)V

    .line 251
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mDividerDecoration:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {v1, v11}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->setAllowDividerAfterLastItem(Z)V

    .line 252
    iget-object v1, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mList:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    move-object/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "var8":Landroid/content/res/TypedArray;
    .local v16, "var8":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setItemAnimator(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;)V

    .line 253
    iget v1, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mRoundedCornerType:I

    .line 254
    .end local v9    # "var6":I
    .local v1, "var6":I
    const/4 v9, 0x1

    if-ne v1, v9, :cond_2

    .line 255
    new-instance v9, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSeslSubheaderRoundedCorner:Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

    .line 256
    new-instance v3, Lcom/samsung/android/ui/util/SeslRoundedCorner;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v4, 0x0

    invoke-direct {v3, v9, v4}, Lcom/samsung/android/ui/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object v3, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    .line 257
    const v3, 0x7f060155

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSubheaderColor:I

    .line 258
    iget-object v4, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSeslSubheaderRoundedCorner:Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

    const/16 v9, 0xf

    invoke-virtual {v4, v9, v3}, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->setRoundedCornerColor(II)V

    .line 259
    iget-object v3, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    iget v4, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSubheaderColor:I

    invoke-virtual {v3, v9, v4}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 260
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslSetOutlineStrokeEnabled(Z)V

    goto :goto_0

    .line 261
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 262
    new-instance v3, Lcom/samsung/android/ui/util/SeslRoundedCorner;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/ui/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    .line 263
    new-instance v3, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSeslSubheaderRoundedCorner:Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

    .line 266
    :cond_3
    :goto_0
    iget v3, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mRoundedCornerType:I

    if-eqz v3, :cond_4

    .line 267
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 268
    iget v4, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSubheaderColor:I

    invoke-virtual {v8, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslSetFillBottomColor(I)V

    .line 269
    new-instance v4, Lcom/samsung/android/ui/util/SeslRoundedCorner;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9, v3}, Lcom/samsung/android/ui/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object v4, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSeslListRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    .line 270
    iget v3, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSubheaderColor:I

    const/16 v9, 0xf

    invoke-virtual {v4, v9, v3}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 271
    iget-object v3, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSeslListRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 272
    new-instance v3, Lcom/samsung/android/ui/util/SeslRoundedCorner;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/samsung/android/ui/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSeslStrokeListRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    .line 273
    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 276
    :cond_4
    iget-object v3, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mList:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_5

    .line 277
    iget-object v3, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mList:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 280
    :cond_5
    iget-object v3, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    return-object v7

    .line 283
    .end local v16    # "var8":Landroid/content/res/TypedArray;
    .end local v17    # "var4":Landroid/content/res/TypedArray;
    .local v1, "var4":Landroid/content/res/TypedArray;
    .restart local v3    # "var8":Landroid/content/res/TypedArray;
    .restart local v9    # "var6":I
    :cond_6
    move-object/from16 v17, v1

    move-object/from16 v16, v3

    .end local v1    # "var4":Landroid/content/res/TypedArray;
    .end local v3    # "var8":Landroid/content/res/TypedArray;
    .restart local v16    # "var8":Landroid/content/res/TypedArray;
    .restart local v17    # "var4":Landroid/content/res/TypedArray;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Could not create RecyclerView"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    .end local v2    # "var2":Landroid/view/ViewGroup;
    .end local v8    # "var12":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .end local v16    # "var8":Landroid/content/res/TypedArray;
    .end local v17    # "var4":Landroid/content/res/TypedArray;
    .restart local v1    # "var4":Landroid/content/res/TypedArray;
    .restart local v3    # "var8":Landroid/content/res/TypedArray;
    .restart local p2    # "var2":Landroid/view/ViewGroup;
    :cond_7
    move-object/from16 v17, v1

    .end local v1    # "var4":Landroid/content/res/TypedArray;
    .restart local v17    # "var4":Landroid/content/res/TypedArray;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroyView()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->unbindPreferences()V

    .line 297
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mList:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 298
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 299
    return-void
.end method

.method public onDisplayPreferenceDialog(Lcom/samsung/android/ui/preference/SeslPreference;)V
    .locals 6
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;Lcom/samsung/android/ui/preference/SeslPreference;)Z

    move-result v0

    .local v0, "var2":Z
    goto :goto_0

    .line 306
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 309
    .restart local v0    # "var2":Z
    :goto_0
    move v1, v0

    .line 310
    .local v1, "var3":Z
    if-nez v0, :cond_1

    .line 311
    move v1, v0

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;Lcom/samsung/android/ui/preference/SeslPreference;)Z

    move-result v1

    .line 317
    :cond_1
    if-nez v1, :cond_5

    .line 318
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "com.samsung.android.ui.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_5

    .line 320
    instance-of v2, p1, Lcom/samsung/android/ui/preference/EditTextPreference;

    if-eqz v2, :cond_2

    .line 321
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;

    move-result-object v2

    .local v2, "var4":Ljava/lang/Object;
    goto :goto_1

    .line 322
    .end local v2    # "var4":Ljava/lang/Object;
    :cond_2
    instance-of v2, p1, Lcom/samsung/android/ui/preference/SeslListPreference;

    if-eqz v2, :cond_3

    .line 323
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;

    move-result-object v2

    .restart local v2    # "var4":Ljava/lang/Object;
    goto :goto_1

    .line 325
    .end local v2    # "var4":Ljava/lang/Object;
    :cond_3
    instance-of v2, p1, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;

    if-eqz v2, :cond_4

    .line 329
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;

    move-result-object v2

    .line 332
    .restart local v2    # "var4":Ljava/lang/Object;
    :goto_1
    move-object v3, v2

    check-cast v3, Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 333
    move-object v3, v2

    check-cast v3, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-string v5, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    .line 326
    .end local v2    # "var4":Ljava/lang/Object;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    :cond_5
    :goto_2
    return-void
.end method

.method public onNavigateToScreen(Lcom/samsung/android/ui/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/PreferenceScreen;

    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;Lcom/samsung/android/ui/preference/PreferenceScreen;)Z

    move-result v0

    .local v0, "var2":Z
    goto :goto_0

    .line 343
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 346
    .restart local v0    # "var2":Z
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;Lcom/samsung/android/ui/preference/PreferenceScreen;)Z

    .line 350
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/samsung/android/ui/preference/SeslPreference;)Z
    .locals 8
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 353
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 355
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;Lcom/samsung/android/ui/preference/SeslPreference;)Z

    move-result v0

    .local v0, "var2":Z
    goto :goto_0

    .line 358
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 361
    .restart local v0    # "var2":Z
    :goto_0
    move v2, v0

    .line 362
    .local v2, "var3":Z
    if-nez v0, :cond_1

    .line 363
    move v2, v0

    .line 364
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    if-eqz v3, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    invoke-interface {v3, p0, p1}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;Lcom/samsung/android/ui/preference/SeslPreference;)Z

    move-result v2

    .line 369
    :cond_1
    if-nez v2, :cond_2

    .line 370
    const-string v3, "SeslPreferenceFragmentC"

    const-string v4, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments."

    invoke-static {v3, v4}, Lcom/mesalabs/ten/update/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .line 372
    .local v3, "var4":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 373
    .local v4, "var5":Landroid/os/Bundle;
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->getFragment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    .line 374
    .local v5, "var6":Landroidx/fragment/app/Fragment;
    invoke-virtual {v5, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 375
    invoke-virtual {v5, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 376
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 377
    .local v1, "var7":Landroidx/fragment/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v1, v6, v5}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 378
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 379
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 382
    .end local v1    # "var7":Landroidx/fragment/app/FragmentTransaction;
    .end local v3    # "var4":Landroidx/fragment/app/FragmentManager;
    .end local v4    # "var5":Landroid/os/Bundle;
    .end local v5    # "var6":Landroidx/fragment/app/Fragment;
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 384
    .end local v0    # "var2":Z
    .end local v2    # "var3":Z
    :cond_3
    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "var1"    # Landroid/os/Bundle;

    .line 389
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 390
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getPreferenceScreen()Lcom/samsung/android/ui/preference/PreferenceScreen;

    move-result-object v0

    .line 391
    .local v0, "var2":Lcom/samsung/android/ui/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 392
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 393
    .local v1, "var3":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 394
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 397
    .end local v1    # "var3":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 400
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcom/samsung/android/ui/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 402
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Lcom/samsung/android/ui/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 403
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 406
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 407
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcom/samsung/android/ui/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Lcom/samsung/android/ui/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 409
    return-void
.end method

.method public onUnbindPreferences()V
    .locals 0

    .line 411
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/os/Bundle;

    .line 414
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 415
    if-eqz p2, :cond_0

    .line 416
    const-string v0, "android:preferences"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 417
    .local v0, "var3":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getPreferenceScreen()Lcom/samsung/android/ui/preference/PreferenceScreen;

    move-result-object v1

    .line 419
    .local v1, "var5":Lcom/samsung/android/ui/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 425
    .end local v0    # "var3":Landroid/os/Bundle;
    .end local v1    # "var5":Lcom/samsung/android/ui/preference/PreferenceScreen;
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mHavePrefs:Z

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->bindPreferences()V

    .line 427
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 428
    .local v0, "var4":Ljava/lang/Runnable;
    if-eqz v0, :cond_1

    .line 429
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 430
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 434
    .end local v0    # "var4":Ljava/lang/Runnable;
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mInitDone:Z

    .line 435
    return-void
.end method

.method public final postBindPreferences()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 441
    :cond_0
    return-void
.end method

.method public final requirePreferenceManager()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 447
    return-void

    .line 445
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seslSetRoundedCornerType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 501
    iput p1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mRoundedCornerType:I

    .line 502
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 450
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mDividerDecoration:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 451
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 454
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mDividerDecoration:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->setDividerHeight(I)V

    .line 455
    return-void
.end method

.method public setPreferenceScreen(Lcom/samsung/android/ui/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/PreferenceScreen;

    .line 458
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/preference/PreferenceManager;->setPreferences(Lcom/samsung/android/ui/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->onUnbindPreferences()V

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mHavePrefs:Z

    .line 461
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->postBindPreferences()V

    .line 466
    :cond_0
    return-void
.end method

.method public setPreferencesFromResource(ILjava/lang/String;)V
    .locals 5
    .param p1, "var1"    # I
    .param p2, "var2"    # Ljava/lang/String;

    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->requirePreferenceManager()V

    .line 475
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Lcom/samsung/android/ui/preference/PreferenceScreen;

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/ui/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/samsung/android/ui/preference/PreferenceScreen;)Lcom/samsung/android/ui/preference/PreferenceScreen;

    move-result-object v0

    .line 476
    .local v0, "var3":Lcom/samsung/android/ui/preference/PreferenceScreen;
    move-object v1, v0

    .line 477
    .local v1, "var4":Ljava/lang/Object;
    if-eqz p2, :cond_1

    .line 478
    invoke-virtual {v0, p2}, Lcom/samsung/android/ui/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v1

    .line 479
    instance-of v2, v1, Lcom/samsung/android/ui/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .local v2, "var5":Ljava/lang/StringBuilder;
    const-string v3, "Preference object with key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string v3, " is not a PreferenceScreen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 488
    .end local v2    # "var5":Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/ui/preference/PreferenceScreen;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->setPreferenceScreen(Lcom/samsung/android/ui/preference/PreferenceScreen;)V

    .line 489
    return-void
.end method

.method public final unbindPreferences()V
    .locals 1

    .line 492
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->getPreferenceScreen()Lcom/samsung/android/ui/preference/PreferenceScreen;

    move-result-object v0

    .line 493
    .local v0, "var1":Lcom/samsung/android/ui/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/PreferenceScreen;->onDetached()V

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->onUnbindPreferences()V

    .line 498
    return-void
.end method
