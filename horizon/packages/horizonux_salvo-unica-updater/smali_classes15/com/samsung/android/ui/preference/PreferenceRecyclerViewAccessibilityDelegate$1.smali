.class Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "PreferenceRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 45
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/samsung/android/ui/preference/PreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
