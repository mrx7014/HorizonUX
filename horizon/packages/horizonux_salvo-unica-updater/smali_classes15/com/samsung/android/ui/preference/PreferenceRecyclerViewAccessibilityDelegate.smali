.class public Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;
.super Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;
.source "PreferenceRecyclerViewAccessibilityDelegate.java"


# instance fields
.field final mDefaultItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field final mItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field final mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 28
    invoke-super {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 41
    new-instance v0, Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate$1;-><init>(Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;->mItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 34
    return-void
.end method


# virtual methods
.method public getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;->mItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    return-object v0
.end method
