.class public final Lcom/samsung/android/ui/preference/PreferenceScreen;
.super Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
.source "PreferenceScreen.java"


# instance fields
.field private mShouldUseGeneratedIds:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 29
    const v0, 0x7f0402c3

    const v1, 0x101008b

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    .line 30
    return-void
.end method


# virtual methods
.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/PreferenceScreen;->getPreferenceManager()Lcom/samsung/android/ui/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/PreferenceManager;->getOnNavigateToScreenListener()Lcom/samsung/android/ui/preference/PreferenceManager$OnNavigateToScreenListener;

    move-result-object v0

    .line 38
    .local v0, "listener":Lcom/samsung/android/ui/preference/PreferenceManager$OnNavigateToScreenListener;
    if-eqz v0, :cond_1

    .line 39
    invoke-interface {v0, p0}, Lcom/samsung/android/ui/preference/PreferenceManager$OnNavigateToScreenListener;->onNavigateToScreen(Lcom/samsung/android/ui/preference/PreferenceScreen;)V

    .line 41
    :cond_1
    return-void

    .line 35
    .end local v0    # "listener":Lcom/samsung/android/ui/preference/PreferenceManager$OnNavigateToScreenListener;
    :cond_2
    :goto_0
    return-void
.end method

.method public shouldUseGeneratedIds()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    return v0
.end method
